#include <iostream>
#include <string>

#include "raylib.h"
#include "raymath.h"
#include "box2d.h"
#include <chrono>
#include "lua.hpp"
#include <thread>
#include <string>
#include "imgui.h"
#include "rlImGui.h"

#include "LuaInterface.h"
#include "Scene.h"
#include "System.h"
#include "TransformInt.h"
#include "ioint.h"
#include "PhysicsInt.h"

#if _DEBUG
void DumpErreor(lua_State* L)
{
    if (lua_gettop(L) && lua_isstring(L, -1))
    {
        std::cout << "Lua error: " << lua_tostring(L, -1) << std::endl;
        lua_pop(L, 1);
    }
}

void ConsoleThreadFunction(lua_State* L)
{
    std::string input;
    while (!WindowShouldClose())
    {
        std::cout << "> ";

        std::getline(std::cin, input);

        if (luaL_dostring(L, input.c_str()) != LUA_OK)
        {
            DumpErreor(L);
        }
    }
}
#endif

//------------------------------------------------------------------------------------
// Program main entry point
//------------------------------------------------------------------------------------
int main(void)
{
    //-----------------------------------Raylib setup-------------------------------------//
    const int screenWidth = 2048;
    const int screenHeight = 2048;

    InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d camera free");

    // Define the camera to look into our 3d world
    Camera3D camera = { 0 };
    camera.position = Vector3{ 10.0f, 10.0f, 10.0f }; // Camera position
    camera.target = Vector3{ 0.0f, 0.0f, 0.0f };      // Camera looking at point
    camera.up = Vector3{ 0.0f, 1.0f, 0.0f };          // Camera up vector (rotation towards target)
    camera.fovy = 45.0f;                                // Camera field-of-view Y
    camera.projection = CAMERA_PERSPECTIVE;             // Camera projection type

    Vector3 cubePosition = { 0.0f, 4.0f, 0.0f };

    DisableCursor();                    // Limit cursor to relative movement inside the window

    SetTargetFPS(60);                   // Set our game to run at 60 frames-per-second
    float timestep = 1.0f / 60.0f;
    //------------------------------------------------------------------------------------//


    //--------------------------------Lua setup-------------------------------------------//
    lua_State* L = luaL_newstate();

    luaL_openlibs(L);

    //Expose all needed engine functionality
    LuaLinking::Class::RegisterClass(L, "Scene", Scene::luaint_WrapFuncs, Scene::luaint_DestroyFuncs);
    LuaTransform::Register(L);
    LuaIO::Register(L);
    LuaPhysics::Register(L);

    //Initialize systems and expose pointers
    SubSceneUpdate sys_SubSceneUpdate;
    LuaLinking::PointerReg(L, "sys_SubSceneUpdate", &sys_SubSceneUpdate);

    ModelDraw sys_ModelDraw;
    LuaLinking::PointerReg(L, "sys_ModelDraw", &sys_ModelDraw);

    Physics sys_Physics;
    LuaLinking::PointerReg(L, "sys_Physics", &sys_Physics);

    //Set up game root scene
    System* rootSystems[] = {&sys_SubSceneUpdate};

    Scene* rootScene = new Scene(L, 1, rootSystems);

    LuaLinking::Class::PushClassInstance<Scene>(L, "Scene", rootScene);

    lua_setglobal(L, "RootScene");

    HelpFuncs::CheckError(L, luaL_dofile(L, "init.lua"));

    #if _DEBUG
    std::thread consoleThread(ConsoleThreadFunction, L);
    #endif
    //------------------------------------------------------------------------------------//

    std::chrono::steady_clock::time_point prev = std::chrono::steady_clock::now();
    std::chrono::milliseconds updateTime = std::chrono::milliseconds::zero();

    // Main game loop
    while (!WindowShouldClose())        // Detect window close button or ESC key
    {
        // Update
        //----------------------------------------------------------------------------------
        UpdateCamera(&camera, CAMERA_FREE);

        if (IsKeyDown('Z')) camera.target = Vector3{ 0.0f, 0.0f, 0.0f };

        std::chrono::steady_clock::time_point curr = std::chrono::steady_clock::now();
        updateTime = std::chrono::duration_cast<std::chrono::milliseconds>(curr - prev);
        prev = curr;

        lua_getglobal(L, "LuaOnUpdate");
        lua_pushnumber(L, timestep);
        lua_pcall(L, 1, 0, -2);

        Physics::World()->Step(timestep, 6, 2);
        
        rootScene->Update(timestep);
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        BeginDrawing();

        ClearBackground(BLACK);

        BeginMode3D(camera);

        lua_getglobal(L, "LuaOnDraw");
        lua_pushnumber(L, timestep);
        lua_pcall(L, 1, 0, -2);

        rootScene->Draw(timestep);

        DrawGrid(10, 1.0f);

        EndMode3D();

        DrawRectangle(10, 10, 320, 133, Fade(SKYBLUE, 0.5f));
        DrawRectangleLines(10, 10, 320, 133, BLUE);

        DrawText("Free camera default controls:", 20, 20, 10, BLACK);
        DrawText("- Mouse Wheel to Zoom in-out", 40, 40, 10, DARKGRAY);
        DrawText("- Mouse Wheel Pressed to Pan", 40, 60, 10, DARKGRAY);
        DrawText("- Alt + Mouse Wheel Pressed to Rotate", 40, 80, 10, DARKGRAY);
        DrawText("- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom", 40, 100, 10, DARKGRAY);
        DrawText("- Z to zoom to (0, 0, 0)", 40, 120, 10, DARKGRAY);

        DrawText((std::string("Update: ") + std::to_string(updateTime.count())).c_str(), 1024, 20, 30, DARKGRAY);

        EndDrawing();
        //----------------------------------------------------------------------------------
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    CloseWindow();        // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return 0;
}

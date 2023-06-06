#include <iostream>
#include <string>

#include "raylib.h"
#include "raymath.h"
#include "box2d.h"
#include <chrono>
#include "lua.hpp"

#include "LuaInterface.h"
#include "Scene.h"
#include "System.h"

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
    //------------------------------------------------------------------------------------//


    //--------------------------------Lua setup-------------------------------------------//
    lua_State* L = luaL_newstate();

    luaL_openlibs(L);

    //Expose all needed engine functionality
    LuaLinking::Class::RegisterClass(L, "Scene", Scene::luaint_WrapFuncs, Scene::luaint_DestroyFuncs);

    //Initialize systems and expose pointers
    SubSceneUpdate sys_SubSceneUpdate;
    LuaLinking::PointerReg(L, "sys_SubSceneUpdate", &sys_SubSceneUpdate);

    ModelDraw sys_ModelDraw;
    LuaLinking::PointerReg(L, "sys_ModelDraw", &sys_ModelDraw);

    //Set up game root scene
    System* rootSystems[] = {&sys_SubSceneUpdate};

    Scene* rootScene = new Scene(L, 1, rootSystems);

    LuaLinking::Class::PushClassInstance(L, "Scene", rootScene);

    lua_setglobal(L, "RootScene");

    HelpFuncs::CheckError(L, luaL_dofile(L, "init.lua"));

    //------------------------------------------------------------------------------------//


    //-------------------------------Box2D setup------------------------------------------//
    b2World world(b2Vec2(0.0f, -10.0f));

    b2BodyDef groundBodyDef;
    groundBodyDef.position.Set(0.0f, -10.0f);

    b2Body* groundBody = world.CreateBody(&groundBodyDef);

    b2PolygonShape groundBox;
    groundBox.SetAsBox(50.0f, 10.0f);

    groundBody->CreateFixture(&groundBox, 0.0f);

    b2BodyDef bodyDef;
    bodyDef.type = b2_dynamicBody;
    bodyDef.position.Set(0.0f, 4.0f);
    b2Body* body = world.CreateBody(&bodyDef);

    b2PolygonShape dynamicBox;
    dynamicBox.SetAsBox(1.0f, 1.0f);

    b2FixtureDef fixtureDef;
    fixtureDef.shape = &dynamicBox;
    fixtureDef.density = 1.0f;
    fixtureDef.friction = 0.3f;

    body->CreateFixture(&fixtureDef);

    float timestep = 1.0f / 60.0f;

    std::chrono::duration<double> timestepDur(timestep);

    std::chrono::steady_clock::time_point prev = std::chrono::steady_clock::now();
    std::chrono::duration<double> stepTimer;
    //--------------------------------------------------------------------------------------


    // Main game loop
    while (!WindowShouldClose())        // Detect window close button or ESC key
    {
        // Update
        //----------------------------------------------------------------------------------
        UpdateCamera(&camera, CAMERA_FREE);

        if (IsKeyDown('Z')) camera.target = Vector3{ 0.0f, 0.0f, 0.0f };


        std::chrono::steady_clock::time_point curr = std::chrono::steady_clock::now();
        stepTimer = std::chrono::duration_cast<std::chrono::duration<double>>(curr - prev);
        prev = curr;

        if (stepTimer >= timestepDur)
        {
            stepTimer -= timestepDur;

            world.Step(timestep, 6, 2);


            HelpFuncs::CheckError(L, luaL_dofile(L, "fixedUpdate.lua"));

            b2Vec2 position = body->GetPosition();
            float angle = body->GetAngle();

            cubePosition = { position.x, position.y, 0.0f };
        }
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------

        HelpFuncs::CheckError(L, luaL_dofile(L, "gameUpdate.lua"));
        BeginDrawing();

        ClearBackground(RAYWHITE);

        BeginMode3D(camera);

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

        EndDrawing();
        //----------------------------------------------------------------------------------
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    CloseWindow();        // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return 0;
}

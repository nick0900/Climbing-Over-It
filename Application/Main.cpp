#include <iostream>
#include <string>

#include "raylib.h"
#include "raymath.h"
#include "box2d.h"
#include <chrono>
#include "lua.hpp"
#include <thread>
#include <string>

#include "LuaInterface.h"
#include "Scene.h"
#include "System.h"
#include "TransformInt.h"
#include "ioint.h"
#include "PhysicsInt.h"
#include "ImguiInt.h"
#include "RenderingInt.h"

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
    //--------------------------------Lua setup-------------------------------------------//
    lua_State* L = luaL_newstate();

    luaL_openlibs(L);

    //Expose all needed engine functionality
    LuaLinking::Class::RegisterClass(L, "Scene", Scene::luaint_WrapFuncs, Scene::luaint_DestroyFuncs);
    LuaTransform::Register(L);
    LuaIO::Register(L);
    LuaPhysics::Register(L);
    LuaImgui::Register(L);
    LuaRendering::Register(L);

    //Initialize systems and expose pointers
    ModelDraw sys_ModelDraw(L);
    LuaLinking::PointerReg(L, "sys_ModelDraw", &sys_ModelDraw);

    Physics sys_Physics;
    LuaLinking::PointerReg(L, "sys_Physics", &sys_Physics);
    //------------------------------------------------------------------------------------//

    //-----------------------------------Raylib setup-------------------------------------//
    HelpFuncs::CheckError(L, luaL_dofile(L, "windowConfig.lua"));

    lua_getglobal(L, "WindowWidth");
    const int screenWidth = luaL_checkinteger(L, -1);
    lua_pop(L, 1);

    lua_getglobal(L, "WindowHeight");
    const int screenHeight = luaL_checkinteger(L, -1);
    lua_pop(L, 1);

    InitWindow(screenWidth, screenHeight, "Climbing Over It");

    DisableCursor();

    lua_getglobal(L, "TargetFps");
    SetTargetFPS(luaL_checkinteger(L, -1));
    lua_pop(L, 1);

    float timestep = 1.0f / 60.0f;

    std::chrono::steady_clock::time_point prev = std::chrono::steady_clock::now();
    std::chrono::milliseconds updateTime = std::chrono::milliseconds::zero();

    HelpFuncs::CheckError(L, luaL_dofile(L, "game.lua"));
    //------------------------------------------------------------------------------------//

#if _DEBUG
    std::thread consoleThread(ConsoleThreadFunction, L);
#endif

    // Main game loop
    while (!WindowShouldClose())
    {
        std::chrono::steady_clock::time_point curr = std::chrono::steady_clock::now();
        updateTime = std::chrono::duration_cast<std::chrono::milliseconds>(curr - prev);
        prev = curr;

        lua_getglobal(L, "LuaFrame");
        lua_pushnumber(L, timestep);
        lua_pushboolean(L, !WindowShouldClose());
        lua_pcall(L, 2, 0, -3);
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    lua_getglobal(L, "LuaDeinit");
    lua_pushnumber(L, timestep);
    lua_pcall(L, 1, 0, -2);
    CloseWindow();
    //--------------------------------------------------------------------------------------

    return 0;
}

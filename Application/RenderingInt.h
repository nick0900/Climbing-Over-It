#pragma once

#include "lua.hpp"
#include "raylib.h"

namespace LuaRendering
{
	void Register(lua_State* L);

	static int SetCameraPosition(lua_State* L);
	static int GetCameraPosition(lua_State* L);
	static int SetCameraTarget(lua_State* L);
	static int GetCameraTarget(lua_State* L);
	static int SetCameraUp(lua_State* L);
	static int GetCameraUp(lua_State* L);
	static int SetCameraFov(lua_State* L);
	static int GetCameraFov(lua_State* L);
	static int SetCameraProjection(lua_State* L);
	static int UpdateCamera(lua_State* L);
	static int BeginFrame(lua_State* L);
	static int EndFrame(lua_State* L);
	static int ClearFrame(lua_State* L);
	static int Begin3D(lua_State* L);
	static int End3D(lua_State* L);

	static int ScreenWidth(lua_State* L);
	static int ScreenHeight(lua_State* L);

	static int RenderText(lua_State* L);
	static int TextButton(lua_State* L);
}

void lua_pushvector2(lua_State * L, Vector2& vec);
Vector2 lua_tovector2(lua_State* L, int index);

void lua_pushvector3(lua_State* L, Vector3& vec);
Vector3 lua_tovector3(lua_State* L, int index);

void lua_pushvector4(lua_State* L, Vector4& vec);
Vector4 lua_tovector4(lua_State* L, int index);

void lua_pushcolor(lua_State* L, Color& color);
Color lua_tocolor(lua_State* L, int index);

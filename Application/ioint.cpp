#include "ioint.h"

#include "lua.hpp"
#include "raylib.h"
#include "LuaInterface.h"

void LuaIO::Register(lua_State* L)
{
	EnumQuickReg(L, KEY_W);
	EnumQuickReg(L, KEY_A);
	EnumQuickReg(L, KEY_S);
	EnumQuickReg(L, KEY_D);
	EnumQuickReg(L, KEY_UP);
	EnumQuickReg(L, KEY_LEFT);
	EnumQuickReg(L, KEY_DOWN);
	EnumQuickReg(L, KEY_RIGHT);
	EnumQuickReg(L, KEY_SPACE);
	EnumQuickReg(L, KEY_P);
	EnumQuickReg(L, KEY_LEFT_CONTROL);
	EnumQuickReg(L, KEY_LEFT_SHIFT);
	
	FunctionQuickReg(L, KeyDown);
	FunctionQuickReg(L, MousePosition);
	FunctionQuickReg(L, MouseDelta);
	FunctionQuickReg(L, CursorDisable);
	FunctionQuickReg(L, CursorEnable);
}

int LuaIO::KeyDown(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		int identifier = luaL_checkinteger(L, 1);
		lua_pushboolean(L, IsKeyDown(identifier));
	}
	else
	{
		return luaL_error(L, "Got %d arguments expected 1 (enumIdentifier)", n);
	}

	return 1;
}

int LuaIO::MousePosition(lua_State* L)
{
	Vector2 vec2 = GetMousePosition();
	lua_pushnumber(L, vec2.x);
	lua_pushnumber(L, vec2.y);
	return 2;
}

int LuaIO::MouseDelta(lua_State* L)
{
	Vector2 vec2 = GetMouseDelta();
	lua_pushnumber(L, vec2.x);
	lua_pushnumber(L, vec2.y);
	return 2;
}

int LuaIO::CursorDisable(lua_State* L)
{
	DisableCursor();
	return 0;
}

int LuaIO::CursorEnable(lua_State* L)
{
	EnableCursor();
	return 0;
}

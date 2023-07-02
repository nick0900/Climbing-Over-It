#pragma once

#include "lua.hpp"
#include "raylib.h"

namespace LuaIO
{
	void Register(lua_State* L);

	static int KeyDown(lua_State* L);
	static int MousePosition(lua_State* L);
}

#pragma once

#include "lua.hpp"

namespace LuaTransform
{
	void Register(lua_State* L);

	static int NewTransform(lua_State* L);
}

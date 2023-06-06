#pragma once

#include "lua.hpp"

namespace LuaTransforms
{
	void RegisterTransform(lua_State* L);

	static int TransformData(lua_State* L);
}

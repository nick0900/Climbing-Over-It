#pragma once

#include "lua.hpp"

namespace LuaPhysics
{
	void Register(lua_State* L);

	static int PhysStep(lua_State* L);

	static int GetWorldPoint(lua_State* L);
	static int GetWorldCentre(lua_State* L);
	static int GetLocalPoint(lua_State* L);
	static int GetAngle(lua_State* L);

	static int GetMaxMotor(lua_State* L);
	static int GetMotorSpeed(lua_State* L);
	static int SetMaxMotor(lua_State* L);
	static int SetMotorSpeed(lua_State* L);
}

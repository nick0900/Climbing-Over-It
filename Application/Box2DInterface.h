#pragma once

#include "box2d.h"
#include "entt.hpp"
#include "lua.hpp"

class PhysEngine
{
public:
	float Timestep;
	int VelocityIterations;
	int PositionIterations;

	static int Step(float actualTimestep);

	//LuaInterface
	static int SetGravity(lua_State* L);
	static int GetGravity(lua_State* L);
	
	static int SetTimestep(lua_State* L);
	static int GetTimestep(lua_State* L);

	static int SetVelocityIterations(lua_State* L);
	static int GetVelocityIterations(lua_State * L);

	static int SetPositionIterations(lua_State* L);
	static int GetPositionIterations(lua_State* L);

private:
	b2Body m_world;
	unsigned int m_frameCounter;
};

class RigidBody
{
public:
	

	//luaInterface

};

class ColliderShape
{

};

namespace PhysicsComponentListeners
{
	void RegisterAll(entt::registry);

	void OnShapeAdd(entt::registry&, entt::entity);
	void OnShapeRemove(entt::registry&, entt::entity);

	void OnBodyAdd(entt::registry&, entt::entity);
	void OnBodyRemove(entt::registry&, entt::entity);
}

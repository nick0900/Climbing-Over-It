#pragma once

#include <vector>

#include "LuaInterface.h"
#include "lua.hpp"
#include "entt.hpp"
#include "System.h"

class Scene
{
public:
	Scene(lua_State* L, int syscount, System* systems[]);
	~Scene();

private:
	lua_State* m_L;
	entt::registry m_registry;
	std::vector<System*> m_systems;

	//Entities
public:
	int CreateEntity();
	void RemoveEntity(int entity);

	bool IsEntity(int entity);
	int GetEntityCount();
	
	//Components
public:
	template <typename...Args>
	bool HasComponents(int entity);

	template <typename T>
	T& GetComponent(int entity);

	template <typename T>
	void SetComponent(int entity, const T&);

	template <typename T, typename...Args>
	void SetComponent(int entity, Args... args);

	template <typename T>
	void RemoveComponent(int entity);

	//Systems
public:
	void Update(float dt);
	void Draw(float dt);

	//Lua wrappers
public:
	static int lua_CreateEntity(lua_State* L);
	static int lua_RemoveEntity(lua_State* L);

	static int lua_IsEntity(lua_State* L);
	static int lua_GetEntityCount(lua_State* L);

	static int lua_HasComponents(lua_State* L);
	static int lua_GetComponent(lua_State* L);
	static int lua_SetComponent(lua_State* L);
	static int lua_CreateComponent(lua_State* L);
	static int lua_RemoveComponent(lua_State* L);

	static int lua_SysOnUpdate(lua_State* L);
	static int lua_SysOnDraw(lua_State* L);

	static int luaint_new(lua_State* L);
	static int luaint_destroy(lua_State* L);
	static const luaL_Reg luaint_WrapFuncs[];
	static const luaL_Reg luaint_DestroyFuncs[];
};

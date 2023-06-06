#include "Components.h"

#include "lua.hpp"

void lua_pushtransform(lua_State* L, Transform& transform)
{
	lua_newtable(L);

	lua_pushnumber(L, transform.translation.x);
	lua_setfield(L, -2, "tx");
	lua_pushnumber(L, transform.translation.y);
	lua_setfield(L, -2, "ty");
	lua_pushnumber(L, transform.translation.z);
	lua_setfield(L, -2, "tz");

	lua_pushnumber(L, transform.rotation.x);
	lua_setfield(L, -2, "rx");
	lua_pushnumber(L, transform.rotation.y);
	lua_setfield(L, -2, "ry");
	lua_pushnumber(L, transform.rotation.z);
	lua_setfield(L, -2, "rz");
	lua_pushnumber(L, transform.rotation.w);
	lua_setfield(L, -2, "rw");

	lua_pushnumber(L, transform.scale.x);
	lua_setfield(L, -2, "sx");
	lua_pushnumber(L, transform.scale.y);
	lua_setfield(L, -2, "sy");
	lua_pushnumber(L, transform.scale.z);
	lua_setfield(L, -2, "sz");
}

Transform lua_totransform(lua_State* L, int index)
{
	Transform out;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "tx");
		out.translation.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "ty");
		out.translation.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "tz");
		out.translation.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "rx");
		out.rotation.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "ry");
		out.rotation.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "rz");
		out.rotation.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "rw");
		out.rotation.w = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "sx");
		out.scale.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "sy");
		out.scale.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "sz");
		out.scale.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a Transform", index);
	}
	return out;
}

void lua_pushmodel(lua_State* L, Model& model)
{
	lua_pushlightuserdata(L, &model);
}

Model lua_tomodel(lua_State* L, int index)
{
	Model out = Model();
	if (lua_isuserdata(L, index))
	{
		out = *(Model*)lua_touserdata(L, -1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushmaterial(lua_State* L, Material& material)
{
	lua_pushlightuserdata(L, &material);
}

Material lua_tomaterial(lua_State* L, int index)
{
	Material out = Material();
	if (lua_isuserdata(L, index))
	{
		out = *(Material*)lua_touserdata(L, -1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

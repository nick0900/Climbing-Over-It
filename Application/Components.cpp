#include "Components.h"

#include "lua.hpp"
#include "box2d.h"

#include "LuaInterface.h"
#include "Scene.h"

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

void lua_pushentity(lua_State* L, entt::entity entity)
{
	lua_pushinteger(L, (int)entity);
}

entt::entity lua_toentity(lua_State* L, int index)
{
	entt::entity out = entt::entity();
	if (lua_isinteger(L, index))
	{
		out = (entt::entity)lua_tointeger(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not an integer", index);
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
		out = *(Model*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushscene(lua_State* L, Scene* scene)
{
	LuaLinking::Class::PushClassInstance<Scene>(L, "Scene", scene);
}

Scene* lua_toscene(lua_State* L, int index)
{
	return LuaLinking::Class::CheckClass<Scene>(L, index, "Scene");
}

void lua_pushrigidbody(lua_State* L, b2Body* rigidbody)
{
	lua_pushlightuserdata(L, rigidbody);
}

b2Body* lua_torigidbody(lua_State* L, int index)
{
	b2Body* out = nullptr;
	if (lua_isuserdata(L, index))
	{
		out = (b2Body*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushrigidbodydef(lua_State* L, RigidbodyDef& rigidbodyDef)
{
	lua_pushlightuserdata(L, &rigidbodyDef);
}

RigidbodyDef lua_torigidbodydef(lua_State* L, int index)
{
	RigidbodyDef out = RigidbodyDef();
	if (lua_isuserdata(L, index))
	{
		out = *(RigidbodyDef*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushpolygonshape(lua_State* L, b2PolygonShape& shape)
{
	lua_pushlightuserdata(L, &shape);
}

b2PolygonShape lua_topolygonshape(lua_State* L, int index)
{
	b2PolygonShape out = b2PolygonShape();
	if (lua_isuserdata(L, index))
	{
		out = *(b2PolygonShape*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushhingejoint(lua_State* L, b2RevoluteJoint* hinge)
{
	lua_pushlightuserdata(L, hinge);
}

b2RevoluteJoint* lua_tohingejoint(lua_State* L, int index)
{
	b2RevoluteJoint* out = nullptr;
	if (lua_isuserdata(L, index))
	{
		out = (b2RevoluteJoint*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushsliderjoint(lua_State* L, b2PrismaticJoint* slider)
{
	lua_pushlightuserdata(L, slider);
}

b2PrismaticJoint* lua_tosliderjoint(lua_State* L, int index)
{
	b2PrismaticJoint* out = nullptr;
	if (lua_isuserdata(L, index))
	{
		out = (b2PrismaticJoint*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

void lua_pushjoint(lua_State* L, b2Joint* joint)
{
	lua_pushlightuserdata(L, joint);
}

b2Joint* lua_tojoint(lua_State* L, int index)
{
	b2Joint* out = nullptr;
	if (lua_isuserdata(L, index))
	{
		out = (b2Joint*)lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not a lightuserdata", index);
	}
	return out;
}

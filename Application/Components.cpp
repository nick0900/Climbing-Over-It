#include "Components.h"

#include <string>
#include <math.h>

#include "lua.hpp"
#include "box2d.h"
#include "raymath.h"
#include "raylib.h"

#include "LuaInterface.h"
#include "Scene.h"

#define PI 3.141592653589793238462643383279502884

#define TO_RADIANS PI / 180.0f

#define TO_DEGREES 180.0f / PI

void lua_pushtransform(lua_State* L, Transform& transform)
{
	lua_newtable(L);

	lua_pushnumber(L, transform.translation.x);
	lua_setfield(L, -2, "tx");
	lua_pushnumber(L, transform.translation.y);
	lua_setfield(L, -2, "ty");
	lua_pushnumber(L, transform.translation.z);
	lua_setfield(L, -2, "tz");

	Vector3 angles = QuaternionToEuler(transform.rotation);
	lua_pushnumber(L, TO_DEGREES * angles.x);
	lua_setfield(L, -2, "rx");
	lua_pushnumber(L, TO_DEGREES * angles.y);
	lua_setfield(L, -2, "ry");
	lua_pushnumber(L, TO_DEGREES * angles.z);
	lua_setfield(L, -2, "rz");

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

		Vector3 angles;
		lua_getfield(L, index, "rx");
		angles.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "ry");
		angles.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);
		lua_getfield(L, index, "rz");
		angles.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		angles.x *= TO_RADIANS;
		angles.y *= TO_RADIANS;
		angles.z *= TO_RADIANS;

		out.rotation = QuaternionFromEuler(angles.x, angles.y, angles.z);

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
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
}

entt::entity lua_objecttoentity(lua_State* L, std::string& object)
{
	lua_getglobal(L, "NameToEntity");
	lua_pushstring(L, object.c_str());
	lua_pcall(L, 1, 1, -2);
	entt::entity entity = (entt::entity)lua_tointeger(L, -1);
	lua_pop(L, -1);
	return entity;
}

void lua_pushmodel(lua_State* L, ModelWrapper& model)
{
	lua_newtable(L);

	lua_pushlightuserdata(L, model.ptr);
	lua_setfield(L, -2, "ptr");

	lua_pushstring(L, model.model.c_str());
	lua_setfield(L, -2, "model");

	lua_pushstring(L, model.texture.c_str());
	lua_setfield(L, -2, "texture");
}

ModelWrapper lua_tomodel(lua_State* L, int index)
{
	ModelWrapper out;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "ptr");
		out.ptr = nullptr;
		if (lua_isuserdata(L, -1))
		{
			out.ptr = (Model*)lua_touserdata(L, -1);
		}
		lua_pop(L, 1);

		lua_getfield(L, index, "model");
		out.model = luaL_checkstring(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "texture");
		if (!lua_isnil(L, -1))
		{
			out.texture = luaL_checkstring(L, -1);
		}
		else
		{
			out.texture = "";
		}
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
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
		out = (b2Body*) lua_touserdata(L, index);
	}
	else
	{
		luaL_error(L, "item at index %d is not userdata", index);
	}
	return out;
}

void lua_pushrigidbodydef(lua_State* L, RigidbodyDef& rigidbodyDef)
{
	lua_newtable(L);

	lua_pushboolean(L, rigidbodyDef.dynamic);
	lua_setfield(L, -2, "dynamic");

	lua_pushnumber(L, rigidbodyDef.density);
	lua_setfield(L, -2, "density");

	lua_pushnumber(L, rigidbodyDef.friction);
	lua_setfield(L, -2, "friction");

	lua_pushinteger(L, rigidbodyDef.category);
	lua_setfield(L, -2, "category");

	lua_pushinteger(L, rigidbodyDef.mask);
	lua_setfield(L, -2, "mask");

	lua_pushboolean(L, rigidbodyDef.sensor);
	lua_setfield(L, -2, "sensor");

	lua_pushboolean(L, rigidbodyDef.rotation);
	lua_setfield(L, -2, "rotation");
}

RigidbodyDef lua_torigidbodydef(lua_State* L, int index)
{
	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "dynamic");
		bool dynamic = lua_toboolean(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "density");
		float density = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "friction");
		float friction = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "category");
		int category = luaL_checkinteger(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "mask");
		int mask = luaL_checkinteger(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "sensor");
		bool sensor = lua_toboolean(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "rotation");
		bool rotation = lua_toboolean(L, -1);
		lua_pop(L, 1);
		return {dynamic, density, friction, category, mask, sensor, rotation};
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return {false, 1.0f, 1.0f, 0xffff, 0xffff, false};
}

void lua_pushpolygonshape(lua_State* L, BoxWrapper& shape)
{
	lua_newtable(L);

	lua_pushlightuserdata(L, shape.ptr);
	lua_setfield(L, -2, "ptr");

	lua_pushnumber(L, shape.hx);
	lua_setfield(L, -2, "hx");

	lua_pushnumber(L, shape.hy);
	lua_setfield(L, -2, "hy");
}

BoxWrapper lua_topolygonshape(lua_State* L, int index)
{
	BoxWrapper out;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "ptr");
		out.ptr = nullptr;
		if (lua_isuserdata(L, -1))
		{
			out.ptr = (b2PolygonShape*)lua_touserdata(L, -1);
		}
		lua_pop(L, 1);

		lua_getfield(L, index, "hx");
		out.hx = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "hy");
		out.hy = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
}

void lua_pushhingejoint(lua_State* L, HingeWrapper hinge)
{
	lua_newtable(L);

	lua_pushlightuserdata(L, hinge.ptr);
	lua_setfield(L, -2, "ptr");

	lua_pushstring(L, hinge.objectA.c_str());
	lua_setfield(L, -2, "objectA");

	lua_pushstring(L, hinge.objectB.c_str());
	lua_setfield(L, -2, "objectB");

	lua_pushnumber(L, hinge.anchorx);
	lua_setfield(L, -2, "anchorx");

	lua_pushnumber(L, hinge.anchory);
	lua_setfield(L, -2, "anchory");

	lua_pushboolean(L, hinge.motor);
	lua_setfield(L, -2, "motor");

	lua_pushnumber(L, hinge.maxforce);
	lua_setfield(L, -2, "maxforce");
}

HingeWrapper lua_tohingejoint(lua_State* L, int index)
{
	HingeWrapper out;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "ptr");
		out.ptr = nullptr;
		if (lua_isuserdata(L, -1))
		{
			out.ptr = (b2RevoluteJoint*)lua_touserdata(L, -1);
		}
		lua_pop(L, 1);

		lua_getfield(L, index, "objectA");
		out.objectA = luaL_checkstring(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "objectB");
		out.objectB = luaL_checkstring(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "anchorx");
		out.anchorx = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "anchory");
		out.anchory = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "motor");
		out.motor = lua_toboolean(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "maxforce");
		out.maxforce = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
}

void lua_pushsliderjoint(lua_State* L, SliderWrapper slider)
{
	lua_newtable(L);

	lua_pushlightuserdata(L, slider.ptr);
	lua_setfield(L, -2, "ptr");

	lua_pushstring(L, slider.objectA.c_str());
	lua_setfield(L, -2, "objectA");

	lua_pushstring(L, slider.objectB.c_str());
	lua_setfield(L, -2, "objectB");

	lua_pushnumber(L, slider.anchorx);
	lua_setfield(L, -2, "anchorx");

	lua_pushnumber(L, slider.anchory);
	lua_setfield(L, -2, "anchory");

	lua_pushnumber(L, slider.axisx);
	lua_setfield(L, -2, "axisx");

	lua_pushnumber(L, slider.axisy);
	lua_setfield(L, -2, "axisy");

	lua_pushnumber(L, slider.upperlimit);
	lua_setfield(L, -2, "upperlimit");

	lua_pushnumber(L, slider.lowerlimit);
	lua_setfield(L, -2, "lowerlimit");

	lua_pushboolean(L, slider.motor);
	lua_setfield(L, -2, "motor");

	lua_pushnumber(L, slider.maxforce);
	lua_setfield(L, -2, "maxforce");
}

SliderWrapper lua_tosliderjoint(lua_State* L, int index)
{
	SliderWrapper out;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "ptr");
		out.ptr = nullptr;
		if (lua_isuserdata(L, -1))
		{
			out.ptr = (b2PrismaticJoint*)lua_touserdata(L, -1);
		}
		lua_pop(L, 1);

		lua_getfield(L, index, "objectA");
		out.objectA = luaL_checkstring(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "objectB");
		out.objectB = luaL_checkstring(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "anchorx");
		out.anchorx = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "anchory");
		out.anchory = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "axisx");
		out.axisx = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "axisy");
		out.axisy = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "upperlimit");
		out.upperlimit = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "lowerlimit");
		out.lowerlimit = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "motor");
		out.motor = lua_toboolean(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "maxforce");
		out.maxforce = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
}

b2Joint* lua_tojoint(lua_State* L, int index)
{
	b2Joint* out = nullptr;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "ptr");
		if (lua_isuserdata(L, -1))
		{
			out = (b2Joint*)lua_touserdata(L, -1);
		}
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
}

void lua_pushhittrigger(lua_State* L, HitTrigger hitTrigger)
{
	lua_newtable(L);

	lua_pushstring(L, hitTrigger.function.c_str());
	lua_setfield(L, -2, "triggerFunction");

	lua_pushstring(L, hitTrigger.object.c_str());
	lua_setfield(L, -2, "object");
}

HitTrigger lua_tohittrigger(lua_State* L, int index)
{
	HitTrigger out;

	if (lua_istable(L, index))
	{
		lua_getfield(L, index, "triggerFunction");
		out.function = luaL_checkstring(L, -1);
		lua_pop(L, 1);

		lua_getfield(L, index, "object");
		out.object = luaL_checkstring(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "item at index %d is not a table", index);
	}
	return out;
}

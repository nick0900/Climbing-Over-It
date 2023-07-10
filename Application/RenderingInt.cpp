#include "RenderingInt.h"

#include "raylib.h"
#include "LuaInterface.h"

namespace Base
{
	Camera3D Camera = { 0 };
}

void LuaRendering::Register(lua_State* L)
{
	FunctionQuickReg(L, SetCameraPosition);
	FunctionQuickReg(L, GetCameraPosition);
	FunctionQuickReg(L, SetCameraTarget);
	FunctionQuickReg(L, GetCameraTarget);
	FunctionQuickReg(L, SetCameraUp);
	FunctionQuickReg(L, GetCameraUp);
	FunctionQuickReg(L, SetCameraFov);
	FunctionQuickReg(L, GetCameraFov);
	FunctionQuickReg(L, SetCameraProjection);
	FunctionQuickReg(L, UpdateCamera);
	FunctionQuickReg(L, BeginFrame);
	FunctionQuickReg(L, EndFrame);
	FunctionQuickReg(L, ClearFrame);
	FunctionQuickReg(L, Begin3D);
	FunctionQuickReg(L, End3D);

	FunctionQuickReg(L, ScreenWidth);
	FunctionQuickReg(L, ScreenHeight);

	EnumQuickReg(L, CAMERA_PERSPECTIVE);
	EnumQuickReg(L, CAMERA_ORTHOGRAPHIC);
	EnumQuickReg(L, CAMERA_CUSTOM);
	EnumQuickReg(L, CAMERA_FIRST_PERSON);
	EnumQuickReg(L, CAMERA_THIRD_PERSON);
	EnumQuickReg(L, CAMERA_ORBITAL);
	EnumQuickReg(L, CAMERA_FREE);
}

int LuaRendering::SetCameraPosition(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		Vector3 vec = lua_tovector3(L, 1);
		Base::Camera.position = vec;
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (posxyz)", n);
}

int LuaRendering::GetCameraPosition(lua_State* L)
{
	lua_pushvector3(L, Base::Camera.position);
	return 1;
}

int LuaRendering::SetCameraTarget(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		Vector3 vec = lua_tovector3(L, 1);
		Base::Camera.target = vec;
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (targetxyz)", n);
}

int LuaRendering::GetCameraTarget(lua_State* L)
{
	lua_pushvector3(L, Base::Camera.target);
	return 1;
}

int LuaRendering::SetCameraUp(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		Vector3 vec = lua_tovector3(L, 1);
		Base::Camera.up = vec;
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (upxyz)", n);
}

int LuaRendering::GetCameraUp(lua_State* L)
{
	lua_pushvector3(L, Base::Camera.up);
	return 1;
}

int LuaRendering::SetCameraFov(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		float fov = luaL_checknumber(L, 1);
		Base::Camera.fovy = fov;
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (fovy)", n);
}

int LuaRendering::GetCameraFov(lua_State* L)
{
	lua_pushnumber(L, Base::Camera.fovy);
	return 1;
}

int LuaRendering::SetCameraProjection(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		int mode = luaL_checkinteger(L, 1);
		Base::Camera.projection = mode;
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (mode)", n);
}

int LuaRendering::UpdateCamera(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		int mode = luaL_checkinteger(L, 1);
		UpdateCamera(&Base::Camera, mode);
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (mode)", n);
}

int LuaRendering::BeginFrame(lua_State* L)
{
	BeginDrawing();
	return 0;
}

int LuaRendering::EndFrame(lua_State* L)
{
	EndDrawing();
	return 0;
}

int LuaRendering::ClearFrame(lua_State* L)
{
	ClearBackground(BLACK);
	return 0;
}

int LuaRendering::Begin3D(lua_State* L)
{
	BeginMode3D(Base::Camera);
	return 0;
}

int LuaRendering::End3D(lua_State* L)
{
	EndMode3D();
	return 0;
}

int LuaRendering::ScreenWidth(lua_State* L)
{
	lua_pushinteger(L, GetScreenWidth());
	return 1;
}

int LuaRendering::ScreenHeight(lua_State* L)
{
	lua_pushinteger(L, GetScreenHeight());
	return 1;
}

void lua_pushvector2(lua_State* L, Vector2& vec)
{
	lua_newtable(L);

	lua_pushnumber(L, vec.x);
	lua_rawseti(L, -2, 1);

	lua_pushnumber(L, vec.y);
	lua_rawseti(L, -2, 2);
}

Vector2 lua_tovector2(lua_State* L, int index)
{
	Vector2 out = Vector2();
	if (lua_istable(L, index))
	{
		lua_rawgeti(L, index, 1);
		out.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 2);
		out.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "not a table at index %d, expected ({x, y})", index);
	}
	return out;
}

void lua_pushvector3(lua_State* L, Vector3& vec)
{
	lua_newtable(L);

	lua_pushnumber(L, vec.x);
	lua_rawseti(L, -2, 1);

	lua_pushnumber(L, vec.y);
	lua_rawseti(L, -2, 2);

	lua_pushnumber(L, vec.z);
	lua_rawseti(L, -2, 3);
}

Vector3 lua_tovector3(lua_State* L, int index)
{
	Vector3 out = Vector3();
	if (lua_istable(L, index))
	{
		lua_rawgeti(L, index, 1);
		out.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 2);
		out.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 3);
		out.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "not a table at index %d, expected ({x, y, z})", index);
	}
	return out;
}

void lua_pushvector4(lua_State* L, Vector4& vec)
{
	lua_newtable(L);
	
	lua_pushnumber(L, vec.x);
	lua_rawseti(L, -2, 1);

	lua_pushnumber(L, vec.y);
	lua_rawseti(L, -2, 2);

	lua_pushnumber(L, vec.z);
	lua_rawseti(L, -2, 3);

	lua_pushnumber(L, vec.w);
	lua_rawseti(L, -2, 4);
}

Vector4 lua_tovector4(lua_State* L, int index)
{
	Vector4 out = Vector4();
	if (lua_istable(L, index))
	{
		lua_rawgeti(L, index, 1);
		out.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 2);
		out.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 3);
		out.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 4);
		out.w = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "not a table at index %d, expected ({x, y, z, w})", index);
	}
	return out;
}

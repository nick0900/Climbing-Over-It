#include "TransformInt.h"

#include "LuaInterface.h"

void LuaTransform::Register(lua_State* L)
{
    FunctionQuickReg(L, NewTransform);
}

int LuaTransform::NewTransform(lua_State* L)
{
    int n = lua_gettop(L);

    if (n == 0)
    {
        lua_newtable(L);

        //Translation
        lua_pushnumber(L, 0);
        lua_setfield(L, -2, "tx");

        lua_pushnumber(L, 0);
        lua_setfield(L, -2, "ty");

        lua_pushnumber(L, 0);
        lua_setfield(L, -2, "tz");


        //Rotation
        lua_pushnumber(L, 0);
        lua_setfield(L, -2, "rx");

        lua_pushnumber(L, 0);
        lua_setfield(L, -2, "ry");

        lua_pushnumber(L, 0);
        lua_setfield(L, -2, "rz");

        lua_pushnumber(L, 1);
        lua_setfield(L, -2, "rw");


        //Scale
        lua_pushnumber(L, 1);
        lua_setfield(L, -2, "sx");

        lua_pushnumber(L, 1);
        lua_setfield(L, -2, "sy");

        lua_pushnumber(L, 1);
        lua_setfield(L, -2, "sz");
    }
    else if (n == 3)
    {
        lua_newtable(L);

        //Translation
        lua_pushnumber(L, 1);
        lua_gettable(L, 1);
        lua_setfield(L, -2, "tx");

        lua_pushnumber(L, 2);
        lua_gettable(L, 1);
        lua_setfield(L, -2, "ty");

        lua_pushnumber(L, 3);
        lua_gettable(L, 1);
        lua_setfield(L, -2, "tz");


        //Rotation
        lua_pushnumber(L, 1);
        lua_gettable(L, 2);
        lua_setfield(L, -2, "rx");

        lua_pushnumber(L, 2);
        lua_gettable(L, 2);
        lua_setfield(L, -2, "ry");

        lua_pushnumber(L, 3);
        lua_gettable(L, 2);
        lua_setfield(L, -2, "rz");

        lua_pushnumber(L, 4);
        lua_gettable(L, 2);
        lua_setfield(L, -2, "rw");


        //Scale
        lua_pushnumber(L, 1);
        lua_gettable(L, 3);
        lua_setfield(L, -2, "sx");

        lua_pushnumber(L, 2);
        lua_gettable(L, 3);
        lua_setfield(L, -2, "sy");

        lua_pushnumber(L, 3);
        lua_gettable(L, 3);
        lua_setfield(L, -2, "sz");
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected none or 3 (translation[tx, ty, tz], rotation[rx, ry, rz, rw], scale[sx, sy, sz])", n);
    }
    return 1;
}

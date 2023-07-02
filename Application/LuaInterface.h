#pragma once
#include "lua.hpp"

#include <string>
#include <iostream>

namespace LuaLinking 
{
#define FunctionQuickReg(L, func) LuaLinking::FuncReg(L, #func, func)
    template<typename R, typename... Args>
    void FuncReg(lua_State* L, const char* name, R(*f)(Args...))
    {
        lua_pushcfunction(L, f);
        lua_setglobal(L, name);
    }

#define PointerQuickReg(L, ptr) LuaLinking::EnumReg(L, #ptr, ptr)
    inline void PointerReg(lua_State* L, const char* name, void* ref)
    {
        lua_pushlightuserdata(L, ref);
        lua_setglobal(L, name);
    }

#define EnumQuickReg(L, enumEntry) LuaLinking::EnumReg(L, #enumEntry, enumEntry)
    inline void EnumReg(lua_State* L, const char* name, int identifier)
    {
        lua_pushinteger(L, identifier);
        lua_setglobal(L, name);
    }

    namespace Class 
    {
        template<class C>
        void NewInstance(lua_State* L, std::string name, C* allocatedInstance)
        {
            // First argument is now a table that represent the class to instantiate        
            luaL_checktype(L, 1, LUA_TTABLE);

            lua_newtable(L);      // Create table to represent instance

            // Set first argument of new to metatable of instance
            lua_pushvalue(L, 1);
            lua_setmetatable(L, -2);

            // Do function lookups in metatable
            lua_pushvalue(L, 1);
            lua_setfield(L, 1, "__index");

            // Allocate memory for a pointer to object
            C** c = (C**)lua_newuserdata(L, sizeof(C*));

            *c = allocatedInstance;

            // Get metatable 'Meta.class' stored in the registry
            luaL_getmetatable(L, ("Meta." + name).c_str());

            // Set user data for Class to use this metatable
            lua_setmetatable(L, -2);

            // Set field '__self' of instance table to the class user data
            lua_setfield(L, -2, "__self");
        }

        inline void RegisterClass(lua_State* L, std::string className, const luaL_Reg* Funcs, const luaL_Reg* DestroyFuncs)
        {
            // Register metatable for user data in registry
            luaL_newmetatable(L, ("Meta." + className).c_str());
            luaL_setfuncs(L, DestroyFuncs, 0);
            luaL_setfuncs(L, Funcs, 0);
            lua_pushvalue(L, -1);
            lua_setfield(L, -2, "__index");

            // Register the base class for instances of Sprite
            lua_newtable(L);
            luaL_setfuncs(L, Funcs, 0);
            lua_setglobal(L, className.c_str());
        }

#define CheckClassInstance(L, RegClass) LuaLinking::Class::CheckClass<RegClass>(L, 1, #RegClass)
        template <class C>
        C* CheckClass(lua_State* L, int index, std::string name)
        {
            void* ud = 0;
            luaL_checktype(L, index, LUA_TTABLE);
            lua_getfield(L, index, "__self");
            ud = luaL_checkudata(L, -1, ("Meta." + name).c_str());
            if (ud == 0)
            {
                luaL_error(L, "Error getting udata for class");
            }
            return *((C**)ud);
        }

        template<class C>
        void PushClassInstance(lua_State* L, std::string name, C* classMemPtr)
        {
            lua_newtable(L);      // Create table to represent instance

            //push registered class base template
            lua_getglobal(L, name.c_str());
            // Set first argument of new to metatable of instance
            lua_setmetatable(L, -2);

            // Allocate memory for a pointer to object
            C** c = (C**)lua_newuserdata(L, sizeof(C*));

            *c = classMemPtr;

            // Get metatable 'Meta.class' stored in the registry
            luaL_getmetatable(L, ("Meta." + name).c_str());

            // Set user data for Class to use this metatable
            lua_setmetatable(L, -2);

            // Set field '__self' of instance table to the class user data
            lua_setfield(L, -2, "__self");
        }
    }
}


namespace HelpFuncs
{
    inline void CheckError(lua_State* L, int funcReturn)
    {
        if (funcReturn != LUA_OK)
        {
            if (lua_gettop(L) && lua_isstring(L, -1))
            {
                std::cout << "Lua error: " << lua_tostring(L, -1) << std::endl;
                lua_pop(L, 1);
            }
        }
    }
}

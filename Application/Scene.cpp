#include "Scene.h"

#include <string>
#include <vector>

#include "entt.hpp"
#include "raylib.h"
#include "raymath.h"
#include "Components.h"
#include "System.h"

Scene::Scene(lua_State* L, int syscount, System* systems[]) : m_L(L)
{
    for (int i = 0; i < syscount; i++)
    {
        m_systems.push_back(systems[i]);
    }
}

Scene::~Scene()
{
}

int Scene::CreateEntity()
{    
    return (int)m_registry.create();
}

void Scene::RemoveEntity(int entity)
{
    m_registry.destroy((entt::entity)entity);
}

bool Scene::IsEntity(int entity)
{
    return m_registry.valid((entt::entity)entity);
}

int Scene::GetEntityCount()
{
    return m_registry.alive();
}

void Scene::OnUpdate(float dt)
{
    for (System* s : m_systems)
    {
        s->OnUpdate(&m_registry, dt);
    }
}

int Scene::lua_CreateEntity(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        lua_pushinteger(L, scene->CreateEntity());
        return 1;
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 1 (self)", n);
    }
    return 0;
}

int Scene::lua_RemoveEntity(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        int entity = luaL_checkinteger(L, 2);
        scene->RemoveEntity(entity);
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 2 (self, entity)", n);
    }
    return 0;
}

int Scene::lua_IsEntity(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        int entity = luaL_checkinteger(L, 2);
        lua_pushboolean(L, scene->IsEntity(entity));
        return 1;
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 2 (self, entity)", n);
    }
    return 0;
}

int Scene::lua_GetEntityCount(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 1)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        lua_pushinteger(L, scene->GetEntityCount());
        return 1;
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 1 (self)", n);
    }
    return 0;
}

int Scene::lua_HasComponents(lua_State* L)
{
    int n = lua_gettop(L);

    if (n > 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        int entity = luaL_checkinteger(L, 2);
        bool result = true;
        for (int i = 3; i <= n; )
        {
            std::string component = luaL_checkstring(L,i);

            if ((component == CompTransform) && !scene->HasComponents<Transform>(entity))
            {
                result = false;
            }
            else if ((component == CompModel) && !scene->HasComponents<Model>(entity))
            {
                result = false;
            }
            else if ((component == CompMaterial) && !scene->HasComponents<Material>(entity))
            {
                result = false;
            }
        }
        lua_pushboolean(L, result);
        return 1;
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 3 or more (self, entity, componentsstr...)", n);
    }
    return 0;
}

int Scene::lua_GetComponent(lua_State* L)
{
    int n = lua_gettop(L);

    if (n == 3)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        int entity = luaL_checkinteger(L, 2);
        std::string component = luaL_checkstring(L, 3);

        if (component == CompTransform)
        {
            lua_pushtransform(L, scene->GetComponent<Transform>(entity));
        }
        else if (component == CompModel)
        {
            lua_pushmodel(L, scene->GetComponent<Model>(entity));
        }
        else if (component == CompMaterial)
        {
            lua_pushmaterial(L, scene->GetComponent<Material>(entity));
        }
        return 1;
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 3 (self, entity, componentstr)", n);
    }
    lua_pushnil(L);
    return 1;
}

int Scene::lua_SetComponent(lua_State* L)
{
    int n = lua_gettop(L);

    if (n == 4)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        int entity = luaL_checkinteger(L, 2);
        std::string component = luaL_checkstring(L, 3);

        if (component == CompTransform)
        {
            scene->SetComponent<Transform>(entity, lua_totransform(L, 4));
        }
        else if (component == CompModel)
        {
            scene->SetComponent<Model>(entity, lua_tomodel(L, 4));
        }
        else if (component == CompMaterial)
        {
            scene->SetComponent<Material>(entity, lua_tomaterial(L, 4));
        }
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 4 (self, entity, componentstr, componentdata)", n);
    }
    return 0;
}

int Scene::lua_CreateComponent(lua_State* L)
{
    int n = lua_gettop(L);

    Scene* scene = CheckClassInstance(L, Scene);
    int entity = luaL_checkinteger(L, 2);
    std::string component = luaL_checkstring(L, 3);

    if (component == CompTransform)
    {
        if ((n == 6) && lua_istable(L, 4) && lua_istable(L, 5) && lua_istable(L, 6))
        {
            lua_getfield(L, 4, "x");
            float px = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 4, "y");
            float py = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 4, "z");
            float pz = luaL_checknumber(L, -1);
            lua_pop(L, 1);


            lua_getfield(L, 5, "x");
            float rx = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 5, "y");
            float ry = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 5, "z");
            float rz = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 5, "w");
            float rw = luaL_checknumber(L, -1);
            lua_pop(L, 1);


            lua_getfield(L, 6, "x");
            float sx = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 6, "y");
            float sy = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_getfield(L, 6, "z");
            float sz = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            Transform transform = { {px, py, pz}, {rx, ry, rz, rw}, {sx, sy, sz} };

            scene->SetComponent<Transform>(entity, transform);
        }
        else
        {
            luaL_error(L, "Got %d arguments expected 6 (self, entity, componentstr, position, quaternion, scale)", n);
        }
    }
    else if (component == CompModel)
    {
        if (n == 4)
        {
            lua_getfield(L, 4, "x");
            std::string filePath = luaL_checkstring(L, 4);

            Model model = LoadModel(filePath.c_str());

            scene->SetComponent<Model>(entity, model);
        }
        else
        {
            luaL_error(L, "Got %d arguments expected 4 (self, entity, componentstr, modelpath)", n);
        }
    }
    else if (component == CompMaterial)
    {
            
    }
    return 0;
}

int Scene::lua_RemoveComponent(lua_State* L)
{
    int n = lua_gettop(L);

    if (n == 3)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        int entity = luaL_checkinteger(L, 2);
        std::string component = luaL_checkstring(L, 3);

        if (component == CompTransform)
        {
            scene->RemoveComponent<Transform>(entity);
        }
        else if (component == CompModel)
        {
            scene->RemoveComponent<Model>(entity);
        }
        else if (component == CompMaterial)
        {
            scene->RemoveComponent<Material>(entity);
        }
    }
    else
    {
        luaL_error(L, "Got %d arguments expected 3 (self, entity, componentstr)", n);
    }
    return 0;
}

int Scene::luaint_new(lua_State* L)
{
    int n = lua_gettop(L);  // Number of arguments
    if (n == 3)
    {
        int count = luaL_checkinteger(L, 2);

        std::vector<System*> systems;
        if (lua_istable(L, 3))
        {
            for (int i = 0; i < count; i++)
            {
                lua_rawgeti(L, 3, i);
                if (lua_isuserdata(L, -1))
                {
                    systems.push_back((System*)lua_touserdata(L, -1));
                }
                lua_pop(L, 1);
            }

            Scene* s = new Scene(L, systems.size(), systems.data());

            LuaLinking::Class::NewInstance<Scene>(L, "Scene", s);
        }
        else
        {
            return luaL_error(L, "third argument not table, expected (class, syscount, sys[])", n);
        }
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected %3 (class, syscount, sys[])", n);
    }
        
    return 1;
}

int Scene::luaint_destroy(lua_State* L)
{
    Scene* scene = CheckClassInstance(L, Scene);
    if (scene != 0)
    {
        delete scene;
    }
    return 0;
}

const luaL_Reg Scene::luaint_WrapFuncs[11] = {
    {"New", Scene::luaint_new},
    {"CreateEntity", Scene::lua_CreateEntity},
    {"RemoveEntity", Scene::lua_RemoveEntity},
    {"IsEntity", Scene::lua_IsEntity},
    {"GetEntityCount", Scene::lua_GetEntityCount},
    {"HasComponents", Scene::lua_HasComponents},
    {"GetComponent", Scene::lua_GetComponent},
    {"SetComponent", Scene::lua_SetComponent},
    {"CreateComponent", Scene::lua_CreateComponent},
    {"RemoveComponent", Scene::lua_RemoveComponent},
    {NULL, NULL}
};

const luaL_Reg Scene::luaint_DestroyFuncs[2] = {
    {"__gc", Scene::luaint_destroy},
    {NULL, NULL}
};

template<typename ... Args>
bool Scene::HasComponents(int entity)
{
    return m_registry.all_of<Args...>((entt::entity)entity);
}

template<typename T>
T& Scene::GetComponent(int entity)
{
    return m_registry.get<T>((entt::entity)entity);
}

template<typename T>
void Scene::SetComponent(int entity, const T& component)
{
    m_registry.emplace_or_replace<T>((entt::entity)entity, component);
}

template<typename T, typename ...Args>
void Scene::SetComponent(int entity, Args... args)
{
    T& comp = m_registry.emplace_or_replace<T>((entt::entity)entity, args...);
}

template<typename T>
void Scene::RemoveComponent(int entity)
{
    m_registry.remove<T>((entt::entity)entity);
}


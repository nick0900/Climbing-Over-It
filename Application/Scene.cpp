#include "Scene.h"

#include <string>
#include <vector>
#include <iostream>

#include "lua.hpp"
#include "entt.hpp"
#include "raylib.h"
#include "raymath.h"
#include "Components.h"
#include "System.h"
#include "box2d.h"

Scene::Scene(lua_State* L, int syscount, System* systems[]) : m_L(L)
{
    for (int i = 0; i < syscount; i++)
    {
        systems[i]->SystemSetup(&m_registry);
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

void Scene::Update(float dt)
{
    for (System* s : m_systems)
    {
        s->OnUpdate(&m_registry, dt);
    }
}

void Scene::Draw(float dt)
{
    for (System* s : m_systems)
    {
        s->OnDraw(&m_registry, dt);
    }
}

int Scene::lua_CreateEntity(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 1)
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
            else if ((component == CompScene) && !scene->HasComponents<Scene*>(entity))
            {
                result = false;
            }
            else if ((component == CompParent) && !scene->HasComponents<entt::entity>(entity))
            {
                result = false;
            }
            else if ((component == CompRigidbody) && !scene->HasComponents<b2Body*>(entity))
            {
                result = false;
            }
            else if ((component == CompRigidbodyDef) && !scene->HasComponents<RigidbodyDef>(entity))
            {
                result = false;
            }
            else if ((component == CompBoxShape) && !scene->HasComponents<b2PolygonShape>(entity))
            {
                result = false;
            }
            else if ((component == CompHingeJoint) && !scene->HasComponents<b2RevoluteJoint*>(entity))
            {
                result = false;
            }
            else if ((component == CompSliderJoint) && !scene->HasComponents<b2PrismaticJoint*>(entity))
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
        else if (component == CompScene)
        {
            lua_pushscene(L, scene->GetComponent<Scene*>(entity));
        }
        else if (component == CompParent)
        {
            lua_pushentity(L, scene->GetComponent<entt::entity>(entity));
        }
        else if (component == CompRigidbody)
        {
            lua_pushrigidbody(L, scene->GetComponent<b2Body*>(entity));
        }
        else if (component == CompRigidbodyDef)
        {
            lua_pushrigidbodydef(L, scene->GetComponent<RigidbodyDef>(entity));
        }
        else if (component == CompBoxShape)
        {
            lua_pushpolygonshape(L, scene->GetComponent<b2PolygonShape>(entity));
        }
        else if (component == CompHingeJoint)
        {
            lua_pushhingejoint(L, scene->GetComponent<b2RevoluteJoint*>(entity));
        }
        else if (component == CompSliderJoint)
        {
            lua_pushsliderjoint(L, scene->GetComponent<b2PrismaticJoint*>(entity));
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
        else if (component == CompScene)
        {
            scene->SetComponent<Scene*>(entity, lua_toscene(L, 4));
        }
        else if (component == CompParent)
        {
            scene->SetComponent<entt::entity>(entity, lua_toentity(L, 4));
        }
        else if (component == CompRigidbodyDef)
        {
            scene->SetComponent<RigidbodyDef>(entity, lua_torigidbodydef(L, 4));
        }
        else if (component == CompBoxShape)
        {
            scene->SetComponent<b2PolygonShape>(entity, lua_topolygonshape(L, 4));
        }
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected 4 (self, entity, componentstr, componentdata)", n);
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
            lua_pushnumber(L, 1);
            lua_gettable(L, 4);
            float px = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 2);
            lua_gettable(L, 4);
            float py = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 3);
            lua_gettable(L, 4);
            float pz = luaL_checknumber(L, -1);
            lua_pop(L, 1);


            lua_pushnumber(L, 1);
            lua_gettable(L, 5);
            float rx = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 2);
            lua_gettable(L, 5);
            float ry = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 3);
            lua_gettable(L, 5);
            float rz = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 4);
            lua_gettable(L, 5);
            float rw = luaL_checknumber(L, -1);
            lua_pop(L, 1);


            lua_pushnumber(L, 1);
            lua_gettable(L, 6);
            float sx = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 2);
            lua_gettable(L, 6);
            float sy = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            lua_pushnumber(L, 3);
            lua_gettable(L, 6);
            float sz = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            Transform transform = { {px, py, pz}, {rx, ry, rz, rw}, {sx, sy, sz} };

            scene->SetComponent<Transform>(entity, transform);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 6 (self, entity, componentstr, position, quaternion, scale)", n);
        }
    }
    else if (component == CompModel)
    {
        if (n == 5)
        {
            std::string filePath = luaL_checkstring(L, 4);

            Model model = LoadModel(filePath.c_str());

            if (!lua_isnil(L, 5))
            {
               filePath = luaL_checkstring(L, 5);

               Texture2D texture = LoadTexture(filePath.c_str());

               SetMaterialTexture(&model.materials[0], MATERIAL_MAP_DIFFUSE, texture);
            }
            scene->SetComponent<Model>(entity, model);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 5 (self, entity, componentstr, modelpath, texturepath)", n);
        }
    }
    else if (component == CompScene)
    {
        return luaL_error(L, "Scene component creation not implemented, create scene and set it instead.");
    }
    else if (component == CompParent)
    {
        if (n == 4)
        {
            if (lua_isinteger(L, 4))
            {
                entt::entity id = (entt::entity)lua_tointeger(L, 4);
                scene->SetComponent<entt::entity>(entity, id);
            }
            else
            {
                return luaL_error(L, "entity is now of type integer");
            }
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 4 (self, entity, componentstr, parentEntity)", n);
        }
    }
    else if (component == CompRigidbody)
    {
        if (n == 3)
        {
            scene->SetComponent<b2Body*>(entity, nullptr);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 3 (self, entity, componentstr)", n);
        }
    }
    else if (component == CompRigidbodyDef)
    {
        if (n == 6)
        {
            bool dynamic = lua_toboolean(L, 4);
            float density = luaL_checknumber(L, 5);
            float friction = luaL_checknumber(L, 6);

            scene->SetComponent<RigidbodyDef>(entity, {dynamic, density, friction});
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 6 (self, entity, componentstr, dynamic, density, friction)", n);
        }
    }
    else if (component == CompBoxShape)
    {
        if (n == 5)
        {
            float hx = luaL_checknumber(L, 4);
            float hy = luaL_checknumber(L, 5);

            b2PolygonShape box;

            box.SetAsBox(hx, hy);

            scene->SetComponent<b2PolygonShape>(entity, box);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 5 (self, entity, componentstr, hx, hy)", n);
        }
    }
    else if (component == CompHingeJoint)
    {
        if (n == 8)
        {
            b2Body* rigidbodyA = lua_torigidbody(L, 4);
            b2Body* rigidbodyB = lua_torigidbody(L, 5);

            float hx = luaL_checknumber(L, 6);
            float hy = luaL_checknumber(L, 7);

            bool motorEnabled = lua_toboolean(L, 8);

            b2RevoluteJointDef hingeDef;
            hingeDef.Initialize(rigidbodyA, rigidbodyB, b2Vec2(hx, hy));
            hingeDef.maxMotorTorque = 10.0f;
            hingeDef.motorSpeed = 0.0f;
            hingeDef.enableMotor = motorEnabled;
            

            scene->SetComponent<b2RevoluteJoint*>(entity, (b2RevoluteJoint*)Physics::World()->CreateJoint(&hingeDef));
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 8 (self, entity, componentstr, rigidbodyA, rigidbodyB, anchorWorldX, anchorWorldY, motorEnabled)", n);
        }
    }
    else if (component == CompSliderJoint)
    {
        if (n == 10)
        {
            b2Body* rigidbodyA = lua_torigidbody(L, 4);
            b2Body* rigidbodyB = lua_torigidbody(L, 5);

            float hx = luaL_checknumber(L, 6);
            float hy = luaL_checknumber(L, 7);

            float ax = luaL_checknumber(L, 8);
            float ay = luaL_checknumber(L, 9);

            bool motorEnabled = lua_toboolean(L, 10);

            b2PrismaticJointDef sliderDef;
            sliderDef.Initialize(rigidbodyA, rigidbodyB, b2Vec2(hx, hy), b2Vec2(ax, ay));
            sliderDef.lowerTranslation = -5.0f;
            sliderDef.upperTranslation = 2.5f;
            sliderDef.enableLimit = true;
            sliderDef.maxMotorForce = 1.0f;
            sliderDef.motorSpeed = 0.0f;
            sliderDef.enableMotor = true;


            scene->SetComponent<b2PrismaticJoint*>(entity, (b2PrismaticJoint*)Physics::World()->CreateJoint(&sliderDef));
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 10 (self, entity, componentstr, rigidbodyA, rigidbodyB, anchorWorldX, anchorWorldY, worldaxisX, worldaxisY, motorEnabled)", n);
        }
    }
    else
    {
        return luaL_error(L, "componentstr not existing or wrong input, expected (self, entity, componentstr,...)", n);
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
        else if (component == CompScene)
        {
            scene->RemoveComponent<Scene*>(entity);
        }
        else if (component == CompRigidbody)
        {
            scene->RemoveComponent<b2Body*>(entity);
        }
        else if (component == CompRigidbodyDef)
        {
            scene->RemoveComponent<RigidbodyDef>(entity);
        }
        else if (component == CompBoxShape)
        {
            scene->RemoveComponent<b2PolygonShape>(entity);
        }
        else if (component == CompHingeJoint)
        {
            scene->RemoveComponent<b2RevoluteJoint*>(entity);
        }
        else if (component == CompSliderJoint)
        {
            scene->RemoveComponent<b2PrismaticJoint*>(entity);
        }
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected 3 (self, entity, componentstr)", n);
    }
    return 0;
}

int Scene::lua_SysOnUpdate(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        float dt = luaL_checknumber(L, 2);
        scene->Update(dt);
        return 0;
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected 2 (self, dt)", n);
    }
}

int Scene::lua_SysOnDraw(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        float dt = luaL_checknumber(L, 2);
        scene->Draw(dt);
        return 0;
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected 2 (self, dt)", n);
    }
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
            for (int i = 1; i <= count; i++)
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
        return luaL_error(L, "Got %d arguments expected 3 (class, syscount, sys[])", n);
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

const luaL_Reg Scene::luaint_WrapFuncs[13] = {
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
    {"Update", Scene::lua_SysOnUpdate},
    {"Draw", Scene::lua_SysOnDraw},
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


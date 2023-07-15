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

void Scene::ClearAll()
{
    m_registry.clear();
}

void Scene::Update(float dt)
{
    for (System* s : m_systems)
    {
        s->OnUpdate(&m_registry, dt);
    }
}

void Scene::Edit(float dt)
{
    for (System* s : m_systems)
    {
        s->OnEdit(&m_registry, dt);
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

int Scene::lua_ClearAll(lua_State* L)
{
    int n = lua_gettop(L);

    if (n == 1)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        scene->ClearAll();
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
            else if ((component == CompModel) && !scene->HasComponents<ModelWrapper>(entity))
            {
                result = false;
            }
            else if ((component == CompParent) && !scene->HasComponents<std::string>(entity))
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
            else if ((component == CompBoxShape) && !scene->HasComponents<BoxWrapper>(entity))
            {
                result = false;
            }
            else if ((component == CompHingeJoint) && !scene->HasComponents<HingeWrapper>(entity))
            {
                result = false;
            }
            else if ((component == CompSliderJoint) && !scene->HasComponents<SliderWrapper>(entity))
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
            lua_pushmodel(L, scene->GetComponent<ModelWrapper>(entity));
        }
        else if (component == CompParent)
        {
            lua_pushstring(L, scene->GetComponent<std::string>(entity).c_str());
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
            lua_pushpolygonshape(L, scene->GetComponent<BoxWrapper>(entity));
        }
        else if (component == CompHingeJoint)
        {
            lua_pushhingejoint(L, scene->GetComponent<HingeWrapper>(entity));
        }
        else if (component == CompSliderJoint)
        {
            lua_pushsliderjoint(L, scene->GetComponent<SliderWrapper>(entity));
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
            ModelWrapper model = lua_tomodel(L, 4);

            model.data = LoadModel(("assets/" + model.model).c_str());

            if (model.texture != "")
            {
                Texture2D texture = LoadTexture(("assets/textures/" + model.texture).c_str());

                SetMaterialTexture(&model.data.materials[0], MATERIAL_MAP_DIFFUSE, texture);
            }

            model.ptr = &model.data;
            
            scene->SetComponent<ModelWrapper>(entity, model);
        }
        else if (component == CompParent)
        {
            scene->SetComponent<std::string>(entity, lua_tostring(L, 4));
        }
        else if (component == CompRigidbody)
        {
            scene->SetComponent<b2Body*>(entity, nullptr);
        }
        else if (component == CompRigidbodyDef)
        {
            scene->SetComponent<RigidbodyDef>(entity, lua_torigidbodydef(L, 4));
        }
        else if (component == CompBoxShape)
        {
            BoxWrapper box = lua_topolygonshape(L, 4);
            box.data.SetAsBox(box.hx, box.hy);
            box.ptr = &box.data;
            scene->SetComponent<BoxWrapper>(entity, box);
        }
        else if (component == CompHingeJoint)
        {
            HingeWrapper hinge = lua_tohingejoint(L, 4);
            b2World* world = Physics::World();

            if (scene->HasComponents<HingeWrapper>(entity))
            {
                HingeWrapper temp = scene->GetComponent<HingeWrapper>(entity);
                if (temp.ptr != nullptr)
                {
                    Physics::World()->DestroyJoint(temp.ptr);
                }
            }

            b2Body* bodyA = nullptr;
            b2Body* bodyB = nullptr;
            int id = (int)lua_objecttoentity(L, hinge.objectA);
            if (id != -1)
            {
                bodyA = scene->GetComponent<b2Body*>(id);
            }
            id = (int)lua_objecttoentity(L, hinge.objectB);
            if (id != -1)
            {
                bodyB = scene->GetComponent<b2Body*>(id);
            }

            hinge.ptr = nullptr;
            if ((bodyA != nullptr) && (bodyB != nullptr))
            {
                b2RevoluteJointDef hingeDef;
                hingeDef.Initialize(bodyA, bodyB, b2Vec2(hinge.anchorx, hinge.anchory));
                hingeDef.maxMotorTorque = hinge.maxforce;
                hingeDef.motorSpeed = 0.0f;
                hingeDef.enableMotor = hinge.motor;

                hinge.ptr = (b2RevoluteJoint*)Physics::World()->CreateJoint(&hingeDef);
            }

            scene->SetComponent<HingeWrapper>(entity, hinge);
        }
        else if (component == CompSliderJoint)
        {
            SliderWrapper slider = lua_tosliderjoint(L, 4);

            if (scene->HasComponents<SliderWrapper>(entity))
            {
                SliderWrapper temp = scene->GetComponent<SliderWrapper>(entity);
                if (temp.ptr != nullptr)
                {
                    Physics::World()->DestroyJoint(temp.ptr);
                }
            }

            b2Body* bodyA = nullptr;
            b2Body* bodyB = nullptr;
            int id = (int)lua_objecttoentity(L, slider.objectA);
            if (id != -1)
            {
                bodyA = scene->GetComponent<b2Body*>(id);
            }
            id = (int)lua_objecttoentity(L, slider.objectB);
            if (id != -1)
            {
                bodyB = scene->GetComponent<b2Body*>(id);
            }

            slider.ptr = nullptr;
            if ((bodyA != nullptr) && (bodyB != nullptr))
            {
                b2PrismaticJointDef sliderDef;
                sliderDef.Initialize(bodyA, bodyB, b2Vec2(slider.anchorx, slider.anchory), b2Vec2(slider.axisx, slider.axisy));
                sliderDef.lowerTranslation = slider.lowerlimit;
                sliderDef.upperTranslation = slider.upperlimit;
                sliderDef.enableLimit = true;
                sliderDef.maxMotorForce = slider.maxforce;
                sliderDef.motorSpeed = 0.0f;
                sliderDef.enableMotor = slider.motor;

                slider.ptr = (b2PrismaticJoint*)Physics::World()->CreateJoint(&sliderDef);
            }
          
            scene->SetComponent<SliderWrapper>(entity, slider);
        }
    }
    else
    {
        return luaL_error(L, "Got %d arguments expected 4 (self, entity, componentstr, componentdata)", n);
    }
    return 0;
}

#define PI 3.141592653589793238462643383279502884

#define TO_RADIANS PI / 180.0f

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


            Vector3 angles;
            lua_pushnumber(L, 1);
            lua_gettable(L, 5);
            angles.x = luaL_checknumber(L, -1);
            lua_pop(L, 1);


            lua_pushnumber(L, 2);
            lua_gettable(L, 5);
            angles.y = luaL_checknumber(L, -1);
            lua_pop(L, 1);


            lua_pushnumber(L, 3);
            lua_gettable(L, 5);
            angles.z = luaL_checknumber(L, -1);
            lua_pop(L, 1);

            angles.x *= TO_RADIANS;
            angles.y *= TO_RADIANS;
            angles.z *= TO_RADIANS;

            Quaternion rot = QuaternionFromEuler(angles.x, angles.y, angles.z);


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

            Transform transform = { {px, py, pz}, {rot.x, rot.y, rot.z, rot.w}, {sx, sy, sz} };

            scene->SetComponent<Transform>(entity, transform);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 6 (self, entity, componentstr, position, eulerangles, scale)", n);
        }
    }
    else if (component == CompModel)
    {
        if (n == 5)
        {
            ModelWrapper model;
            model.model = luaL_checkstring(L, 4);
            
            model.data = LoadModel(("assets/" + model.model).c_str());

            model.texture = "";
            if (!lua_isnil(L, 5))
            {
               model.texture = luaL_checkstring(L, 5);

               Texture2D texture = LoadTexture(("assets/textures/" + model.texture).c_str());

               SetMaterialTexture(&model.data.materials[0], MATERIAL_MAP_DIFFUSE, texture);
            }
            model.ptr = &model.data;
            scene->SetComponent<ModelWrapper>(entity, model);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 5 (self, entity, componentstr, modelpath, texturepath)", n);
        }
    }
    else if (component == CompParent)
    {
        if (n == 4)
        {
            scene->SetComponent<std::string>(entity, luaL_checkstring(L, 4));
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 4 (self, entity, componentstr, parentName)", n);
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
        if (n == 10)
        {
            bool dynamic = lua_toboolean(L, 4);
            float density = luaL_checknumber(L, 5);
            float friction = luaL_checknumber(L, 6);
            int category = luaL_checkinteger(L, 7);
            int mask = luaL_checkinteger(L, 8);
            bool sensor = lua_toboolean(L, 9);
            bool rotation = lua_toboolean(L, 9);

            scene->SetComponent<RigidbodyDef>(entity, {dynamic, density, friction, category, mask, sensor, rotation});
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 10 (self, entity, componentstr, dynamic, density, friction, category, mask, sensor, rotation)", n);
        }
    }
    else if (component == CompBoxShape)
    {
        if (n == 5)
        {
            BoxWrapper box;

            box.hx = luaL_checknumber(L, 4);
            box.hy = luaL_checknumber(L, 5);

            box.data.SetAsBox(box.hx, box.hy);

            box.ptr = &box.data;

            scene->SetComponent<BoxWrapper>(entity, box);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 5 (self, entity, componentstr, hx, hy)", n);
        }
    }
    else if (component == CompHingeJoint)
    {
        if (n == 9)
        {
            if (scene->HasComponents<HingeWrapper>(entity))
            {
                HingeWrapper temp = scene->GetComponent<HingeWrapper>(entity);
                if (temp.ptr != nullptr)
                {
                    Physics::World()->DestroyJoint(temp.ptr);
                }
            }

            HingeWrapper hinge;

            hinge.objectA = luaL_checkstring(L, 4);
            hinge.objectB = luaL_checkstring(L, 5);
            b2Body* bodyA = nullptr;
            b2Body* bodyB = nullptr;
            int id = (int)lua_objecttoentity(L, hinge.objectA);
            if (id != -1)
            {
                bodyA = scene->GetComponent<b2Body*>(id);
            }
            id = (int)lua_objecttoentity(L, hinge.objectB);
            if (id != -1)
            {
                bodyB = scene->GetComponent<b2Body*>(id);
            }

            hinge.anchorx = lua_tonumber(L, 6);
            hinge.anchory = lua_tonumber(L, 7);

            hinge.motor = lua_toboolean(L, 8);

            hinge.maxforce = lua_tonumber(L, 9);

            hinge.ptr = nullptr;
            if ((bodyA != nullptr) && (bodyB != nullptr))
            {
                b2RevoluteJointDef hingeDef;
                hingeDef.Initialize(bodyA, bodyB, b2Vec2(hinge.anchorx, hinge.anchory));
                hingeDef.maxMotorTorque = hinge.maxforce;
                hingeDef.motorSpeed = 0.0f;
                hingeDef.enableMotor = hinge.motor;
                hinge.ptr = (b2RevoluteJoint*)Physics::World()->CreateJoint(&hingeDef);
            }
            
            scene->SetComponent<HingeWrapper>(entity, hinge);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 9 (self, entity, componentstr, objectA, objectB, anchorWorldX, anchorWorldY, motorEnabled, maxforce)", n);
        }
    }
    else if (component == CompSliderJoint)
    {
        if (n == 13)
        {
            if (scene->HasComponents<SliderWrapper>(entity))
            {
                SliderWrapper temp = scene->GetComponent<SliderWrapper>(entity);
                if (temp.ptr != nullptr)
                {
                    Physics::World()->DestroyJoint(temp.ptr);
                }
            }

            SliderWrapper slider;

            slider.objectA = luaL_checkstring(L, 4);
            slider.objectB = luaL_checkstring(L, 5);
            b2Body* bodyA = nullptr;
            b2Body* bodyB = nullptr;
            int id = (int)lua_objecttoentity(L, slider.objectA);
            if (id != -1)
            {
                bodyA = scene->GetComponent<b2Body*>(id);
            }
            id = (int)lua_objecttoentity(L, slider.objectB);
            if (id != -1)
            {
                bodyB = scene->GetComponent<b2Body*>(id);
            }

            slider.anchorx = lua_tonumber(L, 6);
            slider.anchory = lua_tonumber(L, 7);

            slider.axisx = lua_tonumber(L, 8);
            slider.axisy = lua_tonumber(L, 9);

            slider.lowerlimit = lua_tonumber(L, 10);
            slider.upperlimit = lua_tonumber(L, 11);

            slider.motor = lua_toboolean(L, 12);

            slider.maxforce = lua_tonumber(L, 13);

            slider.ptr = nullptr;
            if ((bodyA != nullptr) && (bodyB != nullptr))
            {
                b2PrismaticJointDef sliderDef;
                sliderDef.Initialize(bodyA, bodyB, b2Vec2(slider.anchorx, slider.anchory), b2Vec2(slider.axisx, slider.axisy));
                sliderDef.lowerTranslation = slider.lowerlimit;
                sliderDef.upperTranslation = slider.upperlimit;
                sliderDef.enableLimit = true;
                sliderDef.maxMotorForce = slider.maxforce;
                sliderDef.motorSpeed = 0.0f;
                sliderDef.enableMotor = slider.motor;

                slider.ptr = (b2PrismaticJoint*)Physics::World()->CreateJoint(&sliderDef);
            }

            scene->SetComponent<SliderWrapper>(entity, slider);
        }
        else
        {
            return luaL_error(L, "Got %d arguments expected 13 (self, entity, componentstr, objectA, objectB, anchorWorldX, anchorWorldY, worldaxisX, worldaxisY, lowerlimit, upperlimit, motorEnabled, maxforce)", n);
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
        else if (component == CompParent)
        {
            scene->RemoveComponent<std::string>(entity);
        }
        else if (component == CompModel)
        {
            scene->RemoveComponent<ModelWrapper>(entity);
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
            scene->RemoveComponent<BoxWrapper>(entity);
        }
        else if (component == CompHingeJoint)
        {
            if (scene->HasComponents<HingeWrapper>(entity))
            {
                HingeWrapper temp = scene->GetComponent<HingeWrapper>(entity);
                if (temp.ptr != nullptr)
                {
                    Physics::World()->DestroyJoint(temp.ptr);
                }
            }
            scene->RemoveComponent<HingeWrapper>(entity);
        }
        else if (component == CompSliderJoint)
        {
            if (scene->HasComponents<SliderWrapper>(entity))
            {
                SliderWrapper temp = scene->GetComponent<SliderWrapper>(entity);
                if (temp.ptr != nullptr)
                {
                    Physics::World()->DestroyJoint(temp.ptr);
                }
            }
            scene->RemoveComponent<SliderWrapper>(entity);
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

int Scene::lua_SysOnEdit(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 2)
    {
        Scene* scene = CheckClassInstance(L, Scene);
        float dt = luaL_checknumber(L, 2);
        scene->Edit(dt);
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

const luaL_Reg Scene::luaint_WrapFuncs[15] = {
    {"New", Scene::luaint_new},
    {"CreateEntity", Scene::lua_CreateEntity},
    {"RemoveEntity", Scene::lua_RemoveEntity},
    {"IsEntity", Scene::lua_IsEntity},
    {"GetEntityCount", Scene::lua_GetEntityCount},
    {"ClearAll", Scene::lua_ClearAll},
    {"HasComponents", Scene::lua_HasComponents},
    {"GetComponent", Scene::lua_GetComponent},
    {"SetComponent", Scene::lua_SetComponent},
    {"CreateComponent", Scene::lua_CreateComponent},
    {"RemoveComponent", Scene::lua_RemoveComponent},
    {"Update", Scene::lua_SysOnUpdate},
    {"Edit", Scene::lua_SysOnEdit},
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


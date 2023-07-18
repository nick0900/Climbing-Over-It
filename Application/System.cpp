#include "System.h"

#include "Scene.h"
#include "box2d.h"
#include "raylib.h"
#include "raymath.h"
#include "rlgl.h"
#include "Components.h"

#include <iostream>

namespace Base
{
    b2World World = b2World(b2Vec2(0.0f, -10.0f));
}

Matrix TransformCascade(lua_State* L, entt::registry* registry, entt::entity entity, Matrix transform)
{
    if (registry->all_of<std::string>(entity))
    {
        entt::entity parent = lua_objecttoentity(L, registry->get<std::string>(entity));
        if (registry->all_of<Transform>(parent))
        {
            Transform t = registry->get<Transform>(parent);
            Matrix m = MatrixMultiply(MatrixMultiply(MatrixScale(t.scale.x, t.scale.y, t.scale.z), QuaternionToMatrix(t.rotation)), MatrixTranslate(t.translation.x, t.translation.y, t.translation.z));

            return MatrixMultiply(TransformCascade(L, registry, parent, transform), m);
        }
        else
        {
            return TransformCascade(L, registry, parent, transform);
        }
    }
    else
    {
        return transform;
    }
}

ModelDraw::ModelDraw(lua_State* L) : m_L(L) {}

void ModelDraw::SystemSetup(entt::registry* registry)
{

}

bool ModelDraw::OnUpdate(entt::registry* registry, float dt)
{
    return true;
}

bool ModelDraw::OnEdit(entt::registry* registry, float dt)
{
    return true;
}

bool ModelDraw::OnDraw(entt::registry* registry, float dt)
{
    for (auto [entity, m, t] : registry->view<ModelWrapper, Transform>().each())
    {
        m.data.transform = TransformCascade(m_L, registry, entity, MatrixMultiply(MatrixMultiply(MatrixScale(t.scale.x, t.scale.y, t.scale.z), QuaternionToMatrix(t.rotation)), MatrixTranslate(t.translation.x, t.translation.y, t.translation.z)));
        DrawModel(m.data, Vector3Zero(), 1.0f, WHITE);
    }
    return true;
}

void Physics::SystemSetup(entt::registry* registry)
{
    registry->on_construct<Transform>().connect<Physics::SetBody>();
    registry->on_update<Transform>().connect<Physics::SetBody>();
    registry->on_destroy<Transform>().connect<Physics::RemoveBody>();

    registry->on_construct<b2Body*>().connect<Physics::SetBody>();
    registry->on_update<b2Body*>().connect<Physics::SetBody>();
    registry->on_destroy<b2Body*>().connect<Physics::RemoveBody>();

    registry->on_construct<RigidbodyDef>().connect<Physics::SetBody>();
    registry->on_update<RigidbodyDef>().connect<Physics::SetBody>();
    registry->on_destroy<RigidbodyDef>().connect<Physics::RemoveBody>();

    registry->on_construct<BoxWrapper>().connect<Physics::SetBody>();
    registry->on_update<BoxWrapper>().connect<Physics::SetBody>();
    registry->on_destroy<BoxWrapper>().connect<Physics::RemoveBody>();
}

bool Physics::OnUpdate(entt::registry* registry, float dt)
{
    for (auto [entity, rigidbody, rigidbodyDef, box, transform] : registry->view<b2Body*, RigidbodyDef, BoxWrapper, Transform>().each())
    {
        b2Transform b2transform = rigidbody->GetTransform();
        transform.translation = { b2transform.p.x, b2transform.p.y, transform.translation.z };
        transform.rotation = QuaternionFromEuler(0.0f, 0.0f, b2transform.q.GetAngle());
        transform.scale = { box.sx, box.sy, transform.scale.z};
    }
    return true;
}

bool Physics::OnEdit(entt::registry* registry, float dt)
{
    for (auto [entity, rigidbody, rigidbodyDef, box, transform] : registry->view<b2Body*, RigidbodyDef, BoxWrapper, Transform>().each())
    {
        if ((box.sx != transform.scale.x) || (box.sy != transform.scale.y))
        {
            box.sx = transform.scale.x;
            box.sy = transform.scale.y;
            box.data.SetAsBox(box.hx * box.sx, box.hy * box.sy);
            SetBody(*registry, entity);
        }
        
        rigidbody->SetTransform({ transform.translation.x, transform.translation.y }, QuaternionToEuler(transform.rotation).z);
    }
    return true;
}

bool Physics::OnDraw(entt::registry* registry, float dt)
{
    return true;
}

b2World* Physics::World()
{
    return &Base::World;
}

void Physics::SetBody(entt::registry& registry, entt::entity entity)
{
    if (registry.all_of<b2Body*, RigidbodyDef, BoxWrapper, Transform>(entity))
    {
        b2Body* &bodyPtr = registry.get<b2Body*>(entity);

        RigidbodyDef &rigidbodyDef = registry.get<RigidbodyDef>(entity);

        Transform &transform = registry.get<Transform>(entity);

        BoxWrapper shape = registry.get<BoxWrapper>(entity);

        if (bodyPtr != nullptr)
        {
            if (bodyPtr->GetJointList() != nullptr) return;
            World()->DestroyBody(bodyPtr);
            bodyPtr = nullptr;
        }

        b2BodyDef bodyDef;

        bodyDef.position = b2Vec2(transform.translation.x, transform.translation.y);

        bodyDef.angle = QuaternionToEuler(transform.rotation).z;

        bodyDef.fixedRotation = !rigidbodyDef.rotation;

        if (rigidbodyDef.dynamic)
        {
            bodyDef.type = b2_dynamicBody;
        }
        else
        {
            bodyDef.type = b2_staticBody;
        }

        bodyPtr = World()->CreateBody(&bodyDef);

        b2FixtureDef fixtureDef;

        fixtureDef.density = rigidbodyDef.density;

        fixtureDef.friction = rigidbodyDef.friction;

        fixtureDef.shape = &shape.data;

        fixtureDef.isSensor = rigidbodyDef.sensor;

        fixtureDef.filter.categoryBits = rigidbodyDef.category;

        fixtureDef.filter.maskBits = rigidbodyDef.mask;

        (bodyPtr)->CreateFixture(&fixtureDef);
    }
}

void Physics::RemoveBody(entt::registry& registry, entt::entity entity)
{
    if (registry.all_of<b2Body*>(entity))
    {
        b2Body*& bodyPtr = registry.get<b2Body*>(entity);

        if (bodyPtr != nullptr)
        {
            World()->DestroyBody(bodyPtr);
            bodyPtr = nullptr;
        }
    }
}

HitCheck::HitCheck(lua_State* L) : m_L(L) {}

void HitCheck::SystemSetup(entt::registry* registry)
{
}

bool HitCheck::OnUpdate(entt::registry* registry, float dt)
{
    for (auto [entity, rigidbody, trigger] : registry->view<b2Body*, HitTrigger>().each())
    {
        if ((trigger.function != "") && (rigidbody->GetContactList() != nullptr))
        {
            lua_getglobal(m_L, trigger.function.c_str());
            if (lua_isfunction(m_L, -1))
            {
                lua_pushstring(m_L, trigger.object.c_str());
                lua_pcall(m_L, 1, 0, -2);
            }
        }
    }
    return true;
}

bool HitCheck::OnEdit(entt::registry* registry, float dt)
{
    return true;
}

bool HitCheck::OnDraw(entt::registry* registry, float dt)
{
    return true;
}

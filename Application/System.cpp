#include "System.h"

#include "Scene.h"
#include "box2d.h"
#include "raylib.h"
#include "raymath.h"
#include "Components.h"

#include <iostream>

namespace Base
{
    b2World World = b2World(b2Vec2(0.0f, -10.0f));
}


void SubSceneUpdate::SystemSetup(entt::registry* registry)
{
}

bool SubSceneUpdate::OnUpdate(entt::registry* registry, float dt)
{
    for (auto [entity, s] : registry->view<Scene*>().each())
    {
        s->Update(dt);
    }
    return true;
}

bool SubSceneUpdate::OnDraw(entt::registry* registry, float dt)
{
    for (auto [entity, s] : registry->view<Scene*>().each())
    {
        s->Draw(dt);
    }
    return true;
}

Matrix TransformCascade(entt::registry* registry, entt::entity entity, Matrix transform)
{
    if (registry->all_of<entt::entity>(entity))
    {
        entt::entity parent = registry->get<entt::entity>(entity);
        if (registry->all_of<Transform>(parent))
        {
            Transform t = registry->get<Transform>(parent);
            Matrix m = MatrixMultiply(MatrixTranslate(t.translation.x, t.translation.y, t.translation.z),
                 MatrixMultiply(QuaternionToMatrix(t.rotation),
                 MatrixScale(t.scale.x, t.scale.y, t.scale.z)));

            return MatrixMultiply(TransformCascade(registry, parent, transform), m);
        }
        else
        {
            return TransformCascade(registry, parent, transform);
        }
    }
    else
    {
        return transform;
    }
}

void ModelDraw::SystemSetup(entt::registry* registry)
{
}

bool ModelDraw::OnUpdate(entt::registry* registry, float dt)
{
    return true;
}

bool ModelDraw::OnDraw(entt::registry* registry, float dt)
{
    for (auto [entity, m, t] : registry->view<Model, Transform>().each())
    {
        m.transform = TransformCascade(registry, entity, MatrixMultiply(MatrixTranslate(t.translation.x, t.translation.y, t.translation.z), MatrixMultiply(QuaternionToMatrix(t.rotation), MatrixScale(t.scale.x, t.scale.y, t.scale.z))));
        DrawModel(m, Vector3Zero(), 1.0f, WHITE);
    }
    return true;
}

void Physics::SystemSetup(entt::registry* registry)
{
    registry->on_construct<b2Body*>().connect<Physics::SetBody>();
    registry->on_update<b2Body*>().connect<Physics::SetBody>();
    registry->on_destroy<b2Body*>().connect<Physics::RemoveBody>();

    registry->on_construct<RigidbodyDef>().connect<Physics::SetBody>();
    registry->on_update<RigidbodyDef>().connect<Physics::SetBody>();
    registry->on_destroy<RigidbodyDef>().connect<Physics::RemoveBody>();

    registry->on_construct<b2PolygonShape>().connect<Physics::SetBody>();
    registry->on_update<b2PolygonShape>().connect<Physics::SetBody>();
    registry->on_destroy<b2PolygonShape>().connect<Physics::RemoveBody>();
}

bool Physics::OnUpdate(entt::registry* registry, float dt)
{
    for (auto [entity, rigidbody, rigidbodyDef, box, transform] : registry->view<b2Body*, RigidbodyDef, b2PolygonShape, Transform>().each())
    {
        b2Transform b2transform = rigidbody->GetTransform();
        transform.translation = { b2transform.p.x, b2transform.p.y, transform.translation.z };
        transform.rotation = QuaternionFromEuler(0.0f, 0.0f, b2transform.q.GetAngle());
        transform.scale = { 1.0f, 1.0f, 1.0f};
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
    if (registry.all_of<b2Body*, RigidbodyDef, b2PolygonShape, Transform>(entity))
    {
        b2Body* &bodyPtr = registry.get<b2Body*>(entity);

        RigidbodyDef &rigidbodyDef = registry.get<RigidbodyDef>(entity);

        Transform &transform = registry.get<Transform>(entity);

        b2PolygonShape* shape = &registry.get<b2PolygonShape>(entity);

        if (bodyPtr != nullptr)
        {
            World()->DestroyBody(bodyPtr);
            bodyPtr = nullptr;
        }

        b2BodyDef bodyDef;

        bodyDef.position = b2Vec2(transform.translation.x, transform.translation.y);

        bodyDef.angle = QuaternionToEuler(transform.rotation).z;

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

        fixtureDef.shape = shape;

        (bodyPtr)->CreateFixture(&fixtureDef);
    }
}

void Physics::RemoveBody(entt::registry& registry, entt::entity entity)
{
    if (registry.all_of<b2Body*>(entity))
    {
        b2Body* bodyPtr = registry.get<b2Body*>(entity);

        if (bodyPtr != nullptr)
        {
            World()->DestroyBody(bodyPtr);
            bodyPtr = nullptr;
        }
    }
}

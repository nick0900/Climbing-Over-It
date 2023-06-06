#include "System.h"

#include "Scene.h"
#include "box2d.h"
#include "raylib.h"
#include "raymath.h"

/*
sys_B2WorldUpdate::sys_B2WorldUpdate(PhysEngine* world) :
    m_world(world),
    m_timer(0.0f),
    m_lastFrame(world->)
{}

bool sys_B2WorldUpdate::OnUpdate(entt::registry* registry, float dt)
{
    m_timer += dt;
    if (m_timer >= m_timestep)
    {
        m_timer -= m_timestep;

        if (m_lastFrame == *m_physFrame)
        {
            m_world->Step()
            world->Step(timestep, 6, 2);
        }

        b2Vec2 position = body->GetPosition();
        float angle = body->GetAngle();

        cubePosition = { position.x, position.y, 0.0f };

        auto view = registry->view<b2World>();
        view.each([](b2World& world)
            {
                world.
            });
    }

    return true;
}*/

bool SubSceneUpdate::OnUpdate(entt::registry* registry, float dt)
{
    for (auto [entity, s] : registry->view<Scene>().each())
    {
        s.OnUpdate(dt);
    }
    return true;
}


bool ModelDraw::OnUpdate(entt::registry* registry, float dt)
{
    for (auto [entity, m, t] : registry->view<Model, Transform>().each())
    {
        m.transform = MatrixMultiply(MatrixMultiply(MatrixTranslate(t.translation.x, t.translation.y, t.translation.z), QuaternionToMatrix(t.rotation)), MatrixScale(t.scale.x, t.scale.y, t.scale.z));
        DrawModel(m, Vector3Zero(), 1.0f, {1, 1, 1});
    }
    return true;
}

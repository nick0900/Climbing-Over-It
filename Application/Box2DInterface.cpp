#include "Box2DInterface.h"

#include "box2d.h"

void PhysicsComponentListeners::RegisterAll(entt::registry)
{
}

void PhysicsComponentListeners::OnShapeAdd(entt::registry&, entt::entity)
{
}

void PhysicsComponentListeners::OnShapeRemove(entt::registry&, entt::entity)
{
}

void PhysicsComponentListeners::OnBodyAdd(entt::registry&, entt::entity)
{
}

void PhysicsComponentListeners::OnBodyRemove(entt::registry&, entt::entity)
{
}

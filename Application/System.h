#pragma once

#include "entt.hpp"
#include "Box2DInterface.h"
#include "box2d.h"
#include "lua.hpp"

class System
{
public:
	virtual bool OnUpdate(entt::registry* registry, float dt) = 0;
};

class sys_B2WorldUpdate : public System
{
	sys_B2WorldUpdate(PhysEngine* world);

	virtual bool OnUpdate(entt::registry* registry, float dt) override;

private:
	PhysEngine* m_world;
	float m_timer;
	unsigned int m_lastFrame;
};

class SubSceneUpdate : public System
{
	virtual bool OnUpdate(entt::registry* registry, float dt) override;
};

class ModelDraw : public System
{
	virtual bool OnUpdate(entt::registry* registry, float dt) override;
};

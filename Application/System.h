#pragma once

#include "entt.hpp"
#include "box2d.h"
#include "lua.hpp"

class System
{
public:
	virtual void SystemSetup(entt::registry* registry) = 0;

	virtual bool OnUpdate(entt::registry* registry, float dt) = 0;
	virtual bool OnDraw(entt::registry* registry, float dt) = 0;
};

class ModelDraw : public System
{
public:
	ModelDraw(lua_State* L);

	virtual void SystemSetup(entt::registry* registry) override;

	virtual bool OnUpdate(entt::registry* registry, float dt) override;
	virtual bool OnDraw(entt::registry* registry, float dt) override;

private:
	lua_State* m_L;
};

class Physics : public System
{
	virtual void SystemSetup(entt::registry* registry) override;

	virtual bool OnUpdate(entt::registry* registry, float dt) override;
	virtual bool OnDraw(entt::registry* registry, float dt) override;
public:
	static b2World* World();
	//component listeners
	static void SetBody(entt::registry& registry, entt::entity entity);
	static void RemoveBody(entt::registry& registry, entt::entity entity);
};

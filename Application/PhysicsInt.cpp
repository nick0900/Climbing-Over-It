#include "PhysicsInt.h"

#include "lua.hpp"
#include "box2d.h"
#include "LuaInterface.h"
#include "Components.h"
#include "System.h"

void LuaPhysics::Register(lua_State* L)
{
	FunctionQuickReg(L, PhysStep);

	FunctionQuickReg(L, GetWorldPoint);
	FunctionQuickReg(L, GetWorldCentre);
	FunctionQuickReg(L, GetLocalPoint);
	FunctionQuickReg(L, GetAngle);

	FunctionQuickReg(L, GetMaxMotor);
	FunctionQuickReg(L, SetMaxMotor);
	FunctionQuickReg(L, GetMotorSpeed);
	FunctionQuickReg(L, SetMotorSpeed);
	FunctionQuickReg(L, HasJoints);
	FunctionQuickReg(L, CheckHit);
	FunctionQuickReg(L, GetVelocity);
	FunctionQuickReg(L, ApplyForce);
}

int LuaPhysics::PhysStep(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 3)
	{
		float dt = luaL_checknumber(L, 1);
		int velIter = luaL_checkinteger(L, 2);
		int posIter = luaL_checkinteger(L, 3);

		Physics::World()->Step(dt, velIter, posIter);
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 3, (dt, velIterations, posIterations)", n);
}

int LuaPhysics::GetWorldPoint(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 3)
	{
		b2Body* body = lua_torigidbody(L, 1);

		float px = luaL_checknumber(L, 2);
		float py = luaL_checknumber(L, 3);

		b2Vec2 pos = body->GetWorldPoint(b2Vec2(px, py));

		lua_pushnumber(L, pos.x);
		lua_pushnumber(L, pos.y);
		return 2;
	}
	return luaL_error(L, "Got %d arguments expected 3, (rigidbody, px, py)", n);
}

int LuaPhysics::GetWorldCentre(lua_State* L)
{
    int n = lua_gettop(L);
    if (n == 1)
    {
		b2Body* body = lua_torigidbody(L, 1);

		b2Vec2 pos = body->GetWorldCenter();

		lua_pushnumber(L, pos.x);
		lua_pushnumber(L, pos.y);
        return 2;
    }
    return luaL_error(L, "Got %d arguments expected 1, (rigidbody)", n);
}

int LuaPhysics::GetLocalPoint(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 3)
	{
		b2Body* body = lua_torigidbody(L, 1);

		float wx = luaL_checknumber(L, 2);
		float wy = luaL_checknumber(L, 3);

		b2Vec2 pos = body->GetLocalPoint(b2Vec2(wx, wy));

		lua_pushnumber(L, pos.x);
		lua_pushnumber(L, pos.y);
		return 2;
	}
	return luaL_error(L, "Got %d arguments expected 3, (rigidbody, wx, wy)", n);
}

int LuaPhysics::GetAngle(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		b2Body* body = lua_torigidbody(L, 1);

		lua_pushnumber(L, body->GetAngle());
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected 1, (rigidbody)", n);
}

int LuaPhysics::GetMaxMotor(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		b2Joint* joint = lua_tojoint(L, 1);

		if (joint->GetType() == e_revoluteJoint)
		{
			b2RevoluteJoint* hinge = (b2RevoluteJoint*)joint;
			lua_pushnumber(L, hinge->GetMaxMotorTorque());
		}
		else if (joint->GetType() == e_prismaticJoint)
		{
			b2PrismaticJoint* slider = (b2PrismaticJoint*)joint;
			lua_pushnumber(L, slider->GetMaxMotorForce());
		}
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected 1, (joint)", n);
}

int LuaPhysics::GetMotorSpeed(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		b2Joint* joint = lua_tojoint(L, 1);

		if (joint->GetType() == e_revoluteJoint)
		{
			b2RevoluteJoint* hinge = (b2RevoluteJoint*)joint;
			lua_pushnumber(L, hinge->GetMotorSpeed());
		}
		else if (joint->GetType() == e_prismaticJoint)
		{
			b2PrismaticJoint* slider = (b2PrismaticJoint*)joint;
			lua_pushnumber(L, slider->GetMotorSpeed());
		}
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected 1, (joint)", n);
}

int LuaPhysics::SetMaxMotor(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 2)
	{
		b2Joint* joint = lua_tojoint(L, 1);
		float maxMotor = luaL_checknumber(L, 2);

		if (joint->GetType() == e_revoluteJoint)
		{
			b2RevoluteJoint* hinge = (b2RevoluteJoint*)joint;
			hinge->SetMaxMotorTorque(maxMotor);
		}
		else if (joint->GetType() == e_prismaticJoint)
		{
			b2PrismaticJoint* slider = (b2PrismaticJoint*)joint;
			slider->SetMaxMotorForce(maxMotor);
		}
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 2, (joint, maxTorque/Force)", n);
}

int LuaPhysics::SetMotorSpeed(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 2)
	{
		b2Joint* joint = lua_tojoint(L, 1);
		float speed = luaL_checknumber(L, 2);

		if (joint->GetType() == e_revoluteJoint)
		{
			b2RevoluteJoint* hinge = (b2RevoluteJoint*)joint;
			hinge->SetMotorSpeed(speed);
		}
		else if (joint->GetType() == e_prismaticJoint)
		{
			b2PrismaticJoint* slider = (b2PrismaticJoint*)joint;
			slider->SetMotorSpeed(speed);
		}
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 2, (joint, speed)", n);
}

int LuaPhysics::GetVelocity(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		b2Body* body = lua_torigidbody(L, 1);
		b2Vec2 vel = body->GetLinearVelocity();
		
		lua_pushnumber(L, vel.x);
		lua_pushnumber(L, vel.y);
		return 2;
	}
	return luaL_error(L, "Got %d arguments expected 1, (rigidbody)", n);
}

int LuaPhysics::ApplyForce(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 3)
	{
		b2Body* body = lua_torigidbody(L, 1);
		b2Vec2 force = { luaL_checknumber(L, 2), luaL_checknumber(L, 3) };

		body->ApplyForceToCenter(force, true);
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 3, (rigidbody, x, y)", n);
}

int LuaPhysics::HasJoints(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		b2Body* body = lua_torigidbody(L, 1);

		lua_pushboolean(L, body->GetJointList() != nullptr);
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected , (rigidbody)", n);
}

int LuaPhysics::CheckHit(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		b2Body* body = lua_torigidbody(L, 1);

		lua_pushboolean(L, body->GetContactList() != nullptr);
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected , (rigidbody)", n);
}

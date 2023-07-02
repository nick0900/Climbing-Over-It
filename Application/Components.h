#pragma once

#include "lua.hpp"
#include "box2d.h"
#include "raylib.h"
#include "entt.hpp"

#include "Scene.h"


#define CompTransform "Transform"
void lua_pushtransform(lua_State* L, Transform& transform);
Transform lua_totransform(lua_State* L, int index);

#define CompParent "Parent"
void lua_pushentity(lua_State* L, entt::entity entity);
entt::entity lua_toentity(lua_State* L, int index);

#define CompModel "Model"
void lua_pushmodel(lua_State* L, Model& model);
Model lua_tomodel(lua_State* L, int index);

#define CompScene "Scene"
void lua_pushscene(lua_State* L, Scene* scene);
Scene* lua_toscene(lua_State* L, int index);

#define CompRigidbody "Rigidbody"
void lua_pushrigidbody(lua_State* L, b2Body* body);
b2Body* lua_torigidbody(lua_State* L, int index);

struct RigidbodyDef
{
	bool dynamic = false;
	float density = 1.0f;
	float friction = 1.0f;
};

#define CompRigidbodyDef "RigidbodyDef"
void lua_pushrigidbodydef(lua_State* L, RigidbodyDef &rigidbodyDef);
RigidbodyDef lua_torigidbodydef(lua_State* L, int index);

#define CompBoxShape "BoxCollider"
void lua_pushpolygonshape(lua_State* L, b2PolygonShape& shape);
b2PolygonShape lua_topolygonshape(lua_State* L, int index);

#define CompHingeJoint "Hingejoint"
void lua_pushhingejoint(lua_State* L, b2RevoluteJoint* hinge);
b2RevoluteJoint* lua_tohingejoint(lua_State* L, int index);

#define CompSliderJoint "Sliderjoint"
void lua_pushsliderjoint(lua_State* L, b2PrismaticJoint* slider);
b2PrismaticJoint* lua_tosliderjoint(lua_State* L, int index);

void lua_pushjoint(lua_State* L, b2Joint* joint);
b2Joint* lua_tojoint(lua_State* L, int index);

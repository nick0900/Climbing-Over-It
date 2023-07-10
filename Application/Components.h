#pragma once

#include <string>

#include "lua.hpp"
#include "box2d.h"
#include "raylib.h"
#include "entt.hpp"

#include "Scene.h"

#define CompTransform "Transform"
void lua_pushtransform(lua_State* L, Transform& transform);
Transform lua_totransform(lua_State* L, int index);

#define CompParent "Parent"
entt::entity lua_objecttoentity(lua_State* L, std::string& object);

struct ModelWrapper
{
	Model data;
	Model* ptr;
	std::string model;
	std::string texture;
};

#define CompModel "Model"
void lua_pushmodel(lua_State* L, ModelWrapper& model);
ModelWrapper lua_tomodel(lua_State* L, int index);

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

struct BoxWrapper
{
	b2PolygonShape data;
	b2PolygonShape* ptr;
	float hx;
	float hy;
};

#define CompBoxShape "BoxCollider"
void lua_pushpolygonshape(lua_State* L, BoxWrapper& shape);
BoxWrapper lua_topolygonshape(lua_State* L, int index);

struct HingeWrapper
{
	b2RevoluteJoint* ptr;
	std::string objectA;
	std::string objectB;
	float anchorx;
	float anchory;
	bool motor;
};

#define CompHingeJoint "Hingejoint"
void lua_pushhingejoint(lua_State* L, HingeWrapper hinge);
HingeWrapper lua_tohingejoint(lua_State* L, int index);

struct SliderWrapper
{
	b2PrismaticJoint* ptr;
	std::string objectA;
	std::string objectB;
	float anchorx;
	float anchory;
	float axisx;
	float axisy;
	float upperlimit;
	float lowerlimit;
	bool motor;
};

#define CompSliderJoint "Sliderjoint"
void lua_pushsliderjoint(lua_State* L, SliderWrapper slider);
SliderWrapper lua_tosliderjoint(lua_State* L, int index);

b2Joint* lua_tojoint(lua_State* L, int index);

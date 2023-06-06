#pragma once

#include "lua.hpp"
#include "box2d.h"
#include "raylib.h"

#define CompTransform "Transform"
#define CompModel "Model"
#define CompMaterial "Material"
#define CompCollider "Collider"
#define CompRigidBody "RigidBody"

void lua_pushtransform(lua_State* L, Transform& transform);
Transform lua_totransform(lua_State* L, int index);

void lua_pushmodel(lua_State* L, Model& model);
Model lua_tomodel(lua_State* L, int index);

void lua_pushmaterial(lua_State* L, Material& material);
Material lua_tomaterial(lua_State* L, int index);

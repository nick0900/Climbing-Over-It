#pragma once
#include "lua.hpp"
#include "imgui.h"

namespace LuaImgui
{
	void Register(lua_State* L);

	static int ImguiSetup(lua_State* L);
	static int ImguiShutdown(lua_State* L);

	static int ImguiWindowScale(lua_State* L);

	static int ImguiStartFrame(lua_State* L);
	static int ImguiEndFrame(lua_State* L);

	static int ImguiBegin(lua_State* L);
	static int ImguiEnd(lua_State* L);

	static int ImguiSetNextWindowSize(lua_State* L);
	static int ImguiSetNextWindowPos(lua_State* L);

	static int ImguiMoveFromTitleBarOnly(lua_State* L);

	static int ImguiText(lua_State* L);
	static int ImguiButton(lua_State* L);
	static int ImguiBeginListBox(lua_State* L);
	static int ImguiEndListBox(lua_State* L);
	static int ImguiSelectable(lua_State* L);
	static int ImguiInputText(lua_State* L);
	static int ImguiInputInt(lua_State* L);
	static int ImguiInputInt2(lua_State* L);
	static int ImguiInputInt3(lua_State* L);
	static int ImguiInputFloat(lua_State* L);
	static int ImguiInputFloat2(lua_State* L);
	static int ImguiInputFloat3(lua_State* L);
	static int ImguiInputFloat4(lua_State* L);
	static int ImguiInputCheckbox(lua_State* L);
}

void lua_pushimvec2(lua_State* L, ImVec2& vec);
ImVec2 lua_toimvec2(lua_State* L, int index);

void lua_pushimvec4(lua_State* L, ImVec4& vec);
ImVec4 lua_toimvec4(lua_State* L, int index);

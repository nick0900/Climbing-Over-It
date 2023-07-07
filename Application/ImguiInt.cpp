#include "ImguiInt.h"
#include "imgui.h"
#include "rlImGui.h"
#include "lua.hpp"
#include <string>
#include "LuaInterface.h"
#include <iostream>

void LuaImgui::Register(lua_State* L)
{
	FunctionQuickReg(L, ImguiSetup);
	FunctionQuickReg(L, ImguiShutdown);

	FunctionQuickReg(L, ImguiWindowScale);

	FunctionQuickReg(L, ImguiStartFrame);
	FunctionQuickReg(L, ImguiEndFrame);

	FunctionQuickReg(L, ImguiBegin);
	FunctionQuickReg(L, ImguiEnd);

	EnumQuickReg(L, ImGuiWindowFlags_NoTitleBar);
	EnumQuickReg(L, ImGuiWindowFlags_NoScrollWithMouse);
	EnumQuickReg(L, ImGuiWindowFlags_NoScrollbar);
	EnumQuickReg(L, ImGuiWindowFlags_NoResize);
	EnumQuickReg(L, ImGuiWindowFlags_NoNavInputs);
	EnumQuickReg(L, ImGuiWindowFlags_NoNavFocus);
	EnumQuickReg(L, ImGuiWindowFlags_NoMove);
	EnumQuickReg(L, ImGuiWindowFlags_NoMouseInputs);
	EnumQuickReg(L, ImGuiWindowFlags_NoInputs);
	EnumQuickReg(L, ImGuiWindowFlags_NoFocusOnAppearing);
	EnumQuickReg(L, ImGuiWindowFlags_NoDecoration);
	EnumQuickReg(L, ImGuiWindowFlags_NoCollapse);
	EnumQuickReg(L, ImGuiWindowFlags_MenuBar);
	EnumQuickReg(L, ImGuiWindowFlags_HorizontalScrollbar);
	EnumQuickReg(L, ImGuiWindowFlags_AlwaysVerticalScrollbar);
	EnumQuickReg(L, ImGuiWindowFlags_AlwaysUseWindowPadding);
	EnumQuickReg(L, ImGuiWindowFlags_AlwaysHorizontalScrollbar);
	EnumQuickReg(L, ImGuiWindowFlags_AlwaysAutoResize);

	FunctionQuickReg(L, ImguiSetNextWindowSize);
	FunctionQuickReg(L, ImguiSetNextWindowPos);

	EnumQuickReg(L, ImGuiCond_None);
	EnumQuickReg(L, ImGuiCond_Appearing);
	EnumQuickReg(L, ImGuiCond_FirstUseEver);
	EnumQuickReg(L, ImGuiCond_Once);

	FunctionQuickReg(L, ImguiMoveFromTitleBarOnly);

	FunctionQuickReg(L, ImguiText);
	FunctionQuickReg(L, ImguiButton);
	FunctionQuickReg(L, ImguiBeginListBox);
	FunctionQuickReg(L, ImguiEndListBox);
	FunctionQuickReg(L, ImguiSelectable);
}

int LuaImgui::ImguiSetup(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		bool dark = lua_toboolean(L, 1);
		rlImGuiSetup(dark);
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (Darkmode)", n);
}

int LuaImgui::ImguiShutdown(lua_State* L)
{
    rlImGuiShutdown();
    return 0;
}

int LuaImgui::ImguiWindowScale(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		float scale = luaL_checkinteger(L, 1);
		ImGui::SetWindowFontScale(scale);
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (scale)", n);
	
	return 0;
}

int LuaImgui::ImguiStartFrame(lua_State* L)
{
	rlImGuiBegin();
	return 0;
}

int LuaImgui::ImguiEndFrame(lua_State* L)
{
	rlImGuiEnd();
	return 0;
}

int LuaImgui::ImguiBegin(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 3)
	{
		std::string name = luaL_checkstring(L, 1);
		bool open = lua_toboolean(L, 2);
		int flags = luaL_checkinteger(L, 3);

		lua_pushboolean(L, ImGui::Begin(name.c_str(), &open, flags));

		return 1;
	}
	return luaL_error(L, "Got %d arguments expected 3, (windowName, open, ImGuiWindowFlags)", n);
}

int LuaImgui::ImguiEnd(lua_State* L)
{
	ImGui::End();
	return 0;
}

int LuaImgui::ImguiSetNextWindowSize(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 2)
	{
		ImVec2 size = lua_toimvec2(L, 1);
		int cond = luaL_checkinteger(L, 2);

		ImGui::SetNextWindowSize(size, cond);

		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 2, (Sizexy, ImGuiCond)", n);
}

int LuaImgui::ImguiSetNextWindowPos(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 2)
	{
		ImVec2 pos = lua_toimvec2(L, 1);
		int cond = luaL_checkinteger(L, 2);

		ImGui::SetNextWindowPos(pos, cond);

		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 2, (Pos, ImGuiCond)", n);
}

int LuaImgui::ImguiMoveFromTitleBarOnly(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		bool enabled = lua_toboolean(L, 1);
		ImGui::GetIO().ConfigWindowsMoveFromTitleBarOnly = enabled;
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (enabled)", n);
}

int LuaImgui::ImguiText(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 1)
	{
		std::string text = luaL_checkstring(L, 1);

		ImGui::Text(text.c_str());
		return 0;
	}
	return luaL_error(L, "Got %d arguments expected 1, (text)", n);
}

int LuaImgui::ImguiButton(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 2)
	{
		std::string text = luaL_checkstring(L, 1);
		ImVec2 size = lua_toimvec2(L, 2);
		lua_pushboolean(L, ImGui::Button(text.c_str(), size));
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected 2, (lable, sizeWH)", n);
}

int LuaImgui::ImguiBeginListBox(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 2)
	{
		std::string text = luaL_checkstring(L, 1);
		ImVec2 size = lua_toimvec2(L, 2);
		ImGui::BeginListBox(text.c_str(), size);
		return 1;
	}
	return luaL_error(L, "Got %d arguments expected 2, (lable, sizeWH)", n);
}

int LuaImgui::ImguiEndListBox(lua_State* L)
{
	ImGui::EndListBox();
	return 0;
}

int LuaImgui::ImguiSelectable(lua_State* L)
{
	int n = lua_gettop(L);
	if (n == 4)
	{
		std::string text = luaL_checkstring(L, 1);
		bool selected = lua_toboolean(L, 2);
		int flags = luaL_checkinteger(L, 3);
		ImVec2 size = lua_toimvec2(L, 4);
		
		bool clicked = ImGui::Selectable(text.c_str(), &selected, flags, size);
		lua_pushboolean(L, clicked);
		lua_pushboolean(L, selected);
		return 2;
	}
	return luaL_error(L, "Got %d arguments expected 4, (lable, selected, flags, sizeWH)", n);
}

ImVec2 lua_toimvec2(lua_State* L, int index)
{
	ImVec2 out = ImVec2();
	if (lua_istable(L, index))
	{
		lua_rawgeti(L, index, 1);
		out.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 2);
		out.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "not a table at index %d, expected ({x, y})", index);
	}
	return out;
}

ImVec4 lua_toimvec4(lua_State* L, int index)
{
	ImVec4 out = ImVec4();
	if (lua_istable(L, index))
	{
		lua_rawgeti(L, index, 1);
		out.x = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 2);
		out.y = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 3);
		out.z = luaL_checknumber(L, -1);
		lua_pop(L, 1);

		lua_rawgeti(L, index, 4);
		out.w = luaL_checknumber(L, -1);
		lua_pop(L, 1);
	}
	else
	{
		luaL_error(L, "not a table at index %d, expected ({x, y, z, w})", index);
	}
	return out;
}

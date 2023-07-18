-----------------------init----------------------------------
require "helpFuncs"
require "inputUpdate"
require "crLoops"
require "entitiesStructure"

--translation function for c side to convert object names to entity id
function NameToEntity(name)
	for _, v in ipairs(Entities) do
		if v.name == name then return v.entity end
	end
	return -1;
end

LuaInit = function()
	ActiveScene = Scene:New(2, {sys_ModelDraw, sys_Physics});
	Entities = {};

	dofile("levelCache.lua");
	Entities = loaded;
	LoadToScene(Entities, ActiveScene);
	ActiveScene:Edit(0);

	ImguiSetup(true);
	ImguiMoveFromTitleBarOnly(true);

	gameloop = coroutine.create(GameLoop);
	editorloop = coroutine.create(EditorLoop);
	coroutine.resume(gameloop, 0, true);
	coroutine.resume(editorloop, 0, true);

	SetCameraPosition({0.0, 2.0, 10.0});
	SetCameraTarget({0.0, 0.0, 0.0});
	SetCameraUp({0.0, 1.0, 0.0});
	SetCameraFov(45.0);
	SetCameraProjection(CAMERA_PERSPECTIVE);

	holdingEditor = false;
	editing = false;
end
-------------------------------------------------------------

---------------------gameloop--------------------------------
LuaFrame = function(dt, running)
	baseinput(dt);

	if editing then
		coroutine.resume(editorloop, dt, running);
	else
		coroutine.resume(gameloop, dt, running);
	end
end
-------------------------------------------------------------

---------------------deinit----------------------------------
LuaDeinit = function()
	coroutine.resume(gameloop, 0, false);
	coroutine.resume(editorloop, 0, false);
	ImguiShutdown();
end

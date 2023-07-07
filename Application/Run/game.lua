-----------------------init----------------------------------
require "helpFuncs"
require "inputUpdate"
require "characterinit"
require "crLoops"

testscene = Scene:New(2, {sys_ModelDraw, sys_Physics});
testsceneid = RootScene:CreateEntity();
RootScene:SetComponent(testsceneid, "Scene", testscene);

player = instantiatePlayer(testscene);

ImguiSetup(true);
ImguiMoveFromTitleBarOnly(true);

gameloop = coroutine.create(GameLoop);
editorloop = coroutine.create(EditorLoop);
coroutine.resume(gameloop, 0, true);
coroutine.resume(editorloop, 0, true);

SetCameraPosition({10.0, 10.0, 10.0});
SetCameraTarget({0.0, 0.0, 0.0});
SetCameraUp({0.0, 1.0, 0.0});
SetCameraFov(45.0);
SetCameraProjection(CAMERA_PERSPECTIVE);

editing = false;
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

GameLoop = function(dt, running)
--init

dt, running = coroutine.yield();
--loop
while running do
	UpdateCamera(CAMERA_FREE);
	PhysStep(dt, 6, 2);
	RootScene:Update(dt);

	BeginFrame();
	ClearFrame();
	Begin3D();

	RootScene:Draw(dt);

	End3D();
	EndFrame();

	dt, running = coroutine.yield();
end
--deinit

end

EditorLoop = function(dt, running)
--init

local selectedEntity = nil;
local test1 = false;
local test2 = false;
local test3 = false;

dt, running = coroutine.yield();
--loop
while running do
	UpdateCamera(CAMERA_FREE);

	BeginFrame();
	ClearFrame();
	Begin3D();

	RootScene:Draw(dt);

	End3D();

	ImguiStartFrame();
	ImguiSetNextWindowSize({math.floor(ScreenWidth() * 0.15), math.floor(ScreenHeight() * 0.5)}, ImGuiCond_None);
	ImguiSetNextWindowPos({0, 0}, ImGuiCond_None);
	ImguiBegin("EntityList", true, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize);
	windowScale = math.floor(ScreenHeight() / 1080);
	ImguiWindowScale(windowScale);

	ImguiBeginListBox("Hello", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.4)});
	_, test1 = ImguiSelectable("1", test1, 0, {math.floor(ScreenWidth() * 0.145), math.floor(windowScale * 20)});
	_, test2 = ImguiSelectable("2", test2, 0, {math.floor(ScreenWidth() * 0.145), math.floor(windowScale * 20)});
	_, test3 = ImguiSelectable("3", test3, 0, {math.floor(ScreenWidth() * 0.145), math.floor(windowScale * 20)});

	ImguiEndListBox();

	if ImguiButton("Hello", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
		print("Said Hello");
	end

	ImguiEnd();

	ImguiEndFrame();
	EndFrame();

	dt, running = coroutine.yield();
end
--deinit

end
GameLoop = function(dt, running)
--init

dt, running = coroutine.yield();
--loop
while running do
	--UpdateCamera(CAMERA_FREE);
	PhysStep(dt, 6, 2);
	ActiveScene:Update(dt);

	BeginFrame();
	ClearFrame();
	Begin3D();

	ActiveScene:Draw(dt);

	End3D();
	EndFrame();

	dt, running = coroutine.yield();
end
--deinit

end

EditorLoop = function(dt, running)
--init

local windowScale = math.floor(ScreenHeight() / 1080);
local selected = nil;
local newname = "new";
local filepath = "test.lua";

dt, running = coroutine.yield();
--loop
while running do
	debugCamera(dt);

	BeginFrame();
	ClearFrame();
	Begin3D();

	ActiveScene:Draw(dt);

	End3D();

	ImguiStartFrame();
	
	ImguiSetNextWindowSize({math.floor(ScreenWidth() * 0.15), math.floor(ScreenHeight() * 0.5)}, ImGuiCond_None);
	ImguiSetNextWindowPos({0, 0}, ImGuiCond_None);
	ImguiBegin("EntityList", true, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar);
	ImguiWindowScale(windowScale);

	_, newname = ImguiInputText("NewObjectName", newname, 40);

	if ImguiButton("NewObject", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) and newname ~= "" then
		for _, item in ipairs(Entities) do
			item.selected = false;
		end
		NewEntity(Entities, newname, ActiveScene);
		selected = GetEntity(Entities, newname);
		selected.selected = true;
	end

	ImguiBeginListBox("Entities", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.4)});
	for i, v in ipairs(Entities) do
	local newSelection;
		_, newSelection = ImguiSelectable(v.name, v.selected, 0, {math.floor(ScreenWidth() * 0.145), math.floor(windowScale * 20)});
		if newSelection ~= v.selected then
			if newSelection then
				for _, item in ipairs(Entities) do
					item.selected = false;
				end
				v.selected = true;
				selected = v;
			else
				v.selected = false;
				selected = nil;
			end
		end
	end
	ImguiEndListBox();

	ImguiEnd();

	ImguiSetNextWindowSize({math.floor(ScreenWidth() * 0.15), math.floor(ScreenHeight() * 0.5)}, ImGuiCond_None);
	ImguiSetNextWindowPos({0, math.floor(ScreenHeight() * 0.5)}, ImGuiCond_None);
	ImguiBegin("EntityState", true, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar);
	ImguiWindowScale(windowScale);
	if selected ~= nil then
		local tempName;
		_, tempName = ImguiInputText("Object", selected.name, 40);
		if tempName ~= "" then selected.name = tempName; end

		ImguiBeginListBox("EntityComponents", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.32)});

		for _, comp in ipairs(selected.components) do
			ImguiText(comp.name);
			local update = false;
			local changed;
			if comp.name == "Transform" then
				changed, comp.data.tx, comp.data.ty, comp.data.tz = ImguiInputFloat3("Position", comp.data.tx, comp.data.ty, comp.data.tz);
				if changed then update = true; end

				changed, comp.data.rx, comp.data.ry, comp.data.rz, comp.data.rw = ImguiInputFloat4("Rotation", comp.data.rx, comp.data.ry, comp.data.rz, comp.data.rw);
				if changed then update = true; end

				changed, comp.data.sx, comp.data.sy, comp.data.sz = ImguiInputFloat3("Scale", comp.data.sx, comp.data.sy, comp.data.sz);
				if changed then update = true; end	

				if transformIO(dt, comp.data) then update = true; end

				if ImguiButton("RemoveTransform", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Transform");
					RemoveComponent(selected.components, "Transform");
				end

			elseif comp.name == "Model" then
				_, comp.data.model = ImguiInputText("Modelname", comp.data.model, 200);
				_, comp.data.texture = ImguiInputText("Modeltexture", comp.data.texture, 200);
				if ImguiButton("LoadModel", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					update = true;
				end

				if ImguiButton("RemoveModel", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Model");
					RemoveComponent(selected.components, "Model");
				end
			end

			if update then
				ActiveScene:SetComponent(selected.entity, comp.name, comp.data);
			end
		end

		ImguiEndListBox();

		ImguiBeginListBox("Components", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.1)});
			if ImguiButton("NewTransform", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Transform", {0, 0, 0}, {0, 0, 0, 1}, {1, 1, 1});
				NewComponent(selected.components, "Transform", ActiveScene:GetComponent(selected.entity, "Transform"));
			end

			if ImguiButton("NewModel", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Model", "climber ball.obj", "climber pallet.png");
				NewComponent(selected.components, "Model", ActiveScene:GetComponent(selected.entity, "Model"));
			end
		ImguiEndListBox();

		if ImguiButton("RemoveObject", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
			ActiveScene:RemoveEntity(selected.entity);
			RemoveEntity(Entities, selected.name);
			selected = nil;
		end

	end
	ImguiEnd();

	ImguiSetNextWindowSize({math.floor(ScreenWidth() * 0.15), math.floor(ScreenHeight() * 0.5)}, ImGuiCond_None);
	ImguiSetNextWindowPos({math.floor(ScreenWidth() * (1 - 0.15)), 0}, ImGuiCond_None);
	ImguiBegin("FileManager", true, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar);
	ImguiWindowScale(windowScale);

	_, filepath = ImguiInputText("Filepath", filepath, 40);

	if ImguiButton("Save", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
		file = io.open(filepath, "w");
		io.output(file);
		io.write("loaded = ");
		serialize(Entities);
		io.close(file);
	end

	if ImguiButton("Load", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
		dofile(filepath);
		Entities = loaded;
		ActiveScene:ClearAll();
		LoadToScene(Entities, ActiveScene);
		for _, v in ipairs(Entities) do
			v.selected = false;
		end
		selected = nil;
	end

	ImguiEnd();

	ImguiEndFrame();
	EndFrame();

	dt, running = coroutine.yield();
end
--deinit

end
MainMenu = function(dt, running)
--init
titlecard = true;
endscreen = false;

dt, running = coroutine.yield();
--loop
while running do
	BeginFrame();
	ClearFrame();
	Begin3D();

	ActiveScene:Draw(dt);

	End3D();

	if titlecard then 
		SetCameraPosition({0.0, 2.0, 10.0});
		SetCameraTarget({0.0, 0.0, 0.0});

		RenderText("Climbing Over It", math.floor(ScreenWidth() * 0.07), math.floor(ScreenHeight() * 0.09), math.floor(ScreenHeight() * 0.08), {155, 255, 255, 255});	

		if TextButton("Start", math.floor(ScreenWidth() * 0.07), math.floor(ScreenHeight() * 0.20), math.floor(ScreenHeight() * 0.06), {0, 255, 155, 255}, {0, 0, 0, 255}) then
		titlecard = false;
		end
	elseif endscreen then
		RenderText("Score:", math.floor(ScreenWidth() * 0.05), math.floor(ScreenHeight() * 0.09), math.floor(ScreenHeight() * 0.07), {155, 255, 255, 255});
		RenderText(tostring(math.floor(score)), math.floor(ScreenWidth() * 0.19), math.floor(ScreenHeight() * 0.09), math.floor(ScreenHeight() * 0.07), {255, 55, 55, 255})

		if CurrentLevel.highScore == score then
			RenderText("New Highscore!", math.floor(ScreenWidth() * 0.05), math.floor(ScreenHeight() * 0.16), math.floor(ScreenHeight() * 0.04), {255, 55, 55, 255});
		end

		RenderText("Well Done!", math.floor(ScreenWidth() * 0.05), math.floor(ScreenHeight() * 0.24), math.floor(ScreenHeight() * 0.04), {0, 255, 155, 255});
		
		if TextButton("Continue", math.floor(ScreenWidth() * 0.05), math.floor(ScreenHeight() * 0.30), math.floor(ScreenHeight() * 0.05), {155, 255, 255, 255}, {0, 0, 0, 255}) then
			LevelLoad(Levels.Menu);
			endscreen = false;
		end
	else
		SetCameraPosition({0.0, 2.0, 10.0});
		SetCameraTarget({0.0, 0.0, 0.0});

		RenderText("Climbing Over It", math.floor(ScreenWidth() * 0.3), math.floor(ScreenHeight() * 0.05), math.floor(ScreenHeight() * 0.06), {0, 255, 155, 255});

		for i, v in ipairs(Levels) do
			if TextButton(v.name, math.floor(ScreenWidth() * 0.3), math.floor(ScreenHeight() * 0.09 + ScreenHeight() * 0.07 * i), math.floor(ScreenHeight() * 0.04), {155, 255, 255, 255}, {0, 0, 0, 255}) then
				ingame = true;
				CursorDisable();
				LevelLoad(v);

				collectedCoins = 0;
				timer = 0;
				score = 0;

				CursorDisable();
				file = io.open("levelCache.lua", "w");
				io.output(file);
				io.write("loaded = ");
				serialize(Entities);
				io.close(file);

				filepath = v.path;
			end

			RenderText("Highscore:", math.floor(ScreenWidth() * 0.4), math.floor(ScreenHeight() * 0.09 + ScreenHeight() * 0.07 * i), math.floor(ScreenHeight() * 0.04), {155, 255, 255, 255});
			RenderText(tostring(v.highScore), math.floor(ScreenWidth() * 0.53), math.floor(ScreenHeight() * 0.09 + ScreenHeight() * 0.07 * i), math.floor(ScreenHeight() * 0.04), {255, 55, 55, 255});
			if TextButton("Reset", math.floor(ScreenWidth() * (0.535 + 0.014 * string.len(tostring(v.highScore)))), math.floor(ScreenHeight() * 0.09 + ScreenHeight() * 0.07 * i), math.floor(ScreenHeight() * 0.04), {0, 0, 0, 255}, {255, 55, 55, 255}) then
				v.highScore = 0;
				file = io.open("levels.lua", "w");
				io.output(file);
				io.write("Levels = ");
				serialize(Levels);
				io.close(file);
			end
		end
	end
	EndFrame();

	dt, running = coroutine.yield();
end
--deinit

end


GameLoop = function(dt, running)
--init

dt, running = coroutine.yield();
--loop
while running do
	timer = timer + dt;
	score = ((collectedCoins + 1) * 10000) / (1 + timer / 10);

	playerController(dt);
	PhysStep(dt, 20, 4);
	ActiveScene:Update(dt);

	BeginFrame();
	ClearFrame();
	Begin3D();

	ActiveScene:Draw(dt);

	End3D();

	RenderText("Score:", math.floor(ScreenWidth() * 0.05), math.floor(ScreenHeight() * 0.09), math.floor(ScreenHeight() * 0.07), {155, 255, 255, 255});
	RenderText(tostring(math.floor(score)), math.floor(ScreenWidth() * 0.19), math.floor(ScreenHeight() * 0.09), math.floor(ScreenHeight() * 0.07), {255, 55, 55, 255});
	EndFrame();

	local botTransform = nil;
	local botEntity = GetEntity(Entities, "playerBot");
	if botEntity ~= nil then
		botTransform = ActiveScene:GetComponent(botEntity.entity, "Transform");
	end
	if botTransform ~= nil then
		if botTransform.ty < -6 then 
			ingame = false;
			LevelLoad(Levels.Menu);
			CursorEnable(); 
		end
	end

	if KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_P) then
		if not holdingEditor then
			editing = true;
			holdingEditor = true;

			CursorEnable(); 
			dofile("levelCache.lua");
			Entities = loaded;
			ActiveScene:ClearAll();
			LoadToScene(Entities, ActiveScene);
			for _, v in ipairs(Entities) do
				v.selected = false;
			end
			selected = nil;
			SetCameraPosition({0.0, 2.0, 10.0});
			SetCameraTarget({0.0, 0.0, 0.0});
		end
	elseif holdingEditor then
		holdingEditor = false;
	end

	dt, running = coroutine.yield();
end
--deinit

end

EditorLoop = function(dt, running)
--init

local windowScale = math.floor(ScreenHeight() / 1080);
selected = nil;
local newname = "new";
filepath = "test.lua";

dt, running = coroutine.yield();
--loop
while running do
	debugCamera(dt);

	BeginFrame();
	ClearFrame();
	Begin3D();

	ActiveScene:Draw(dt);

	End3D();

	if KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_P) then
		if not holdingEditor then
			editing = false;
			holdingEditor = true;

			CursorDisable();
			file = io.open("levelCache.lua", "w");
			io.output(file);
			io.write("loaded = ");
			serialize(Entities);
			io.close(file);

			collectedCoins = 0;
			timer = 0;
			score = 0;
		end
	elseif holdingEditor then
		holdingEditor = false;
	end

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

	if selected ~= nil then
		if ImguiButton("Duplicate", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) and newname ~= "" then
			DuplicateEntity(selected, Entities, ActiveScene);
		end
	end
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
				comp.data = ActiveScene:GetComponent(selected.entity, "Transform");
				changed, comp.data.tx, comp.data.ty, comp.data.tz = ImguiInputFloat3("Position", 0.001, comp.data.tx, comp.data.ty, comp.data.tz);
				if changed then update = true; end

				changed, comp.data.rx, comp.data.ry, comp.data.rz = ImguiInputFloat3("Rotation", 0.1, comp.data.rx, comp.data.ry, comp.data.rz);
				if changed then update = true; end

				changed, comp.data.sx, comp.data.sy, comp.data.sz = ImguiInputFloat3("Scale", 0.001, comp.data.sx, comp.data.sy, comp.data.sz);
				if changed then update = true; end

				if transformIO(dt, comp.data) then update = true; end

				if ImguiButton("RemoveTransform", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Transform");
					RemoveComponent(selected.components, "Transform");
				end

			elseif comp.name == "Parent" then
				changed, comp.data = ImguiInputText("Other", comp.data, 40);
				if changed then update = true; end

				if ImguiButton("RemoveParent", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Parent");
					RemoveComponent(selected.components, "Parent");
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

			elseif comp.name == "Rigidbody" then
				if ImguiButton("RemoveRigidbody", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Rigidbody");
					RemoveComponent(selected.components, "Rigidbody");
				end

			elseif comp.name == "RigidbodyDef" then
				changed, comp.data.dynamic = ImguiInputCheckbox("Dynamic", comp.data.dynamic);
				if changed then update = true; end

				changed, comp.data.density = ImguiInputFloat("Density", 0.01, comp.data.density);
				if changed then update = true; end

				changed, comp.data.friction = ImguiInputFloat("Friction", 0.01, comp.data.friction);
				if changed then update = true; end

				changed, comp.data.category = ImguiInputInt("Category", comp.data.category);
				if changed then update = true; end

				changed, comp.data.mask = ImguiInputInt("Mask", comp.data.mask);
				if changed then update = true; end

				changed, comp.data.sensor = ImguiInputCheckbox("Sensor", comp.data.sensor);
				if changed then update = true; end

				changed, comp.data.rotation = ImguiInputCheckbox("EnableRotation", comp.data.rotation);
				if changed then update = true; end

				if ImguiButton("RemoveRigidbodyDef", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "RigidbodyDef");
					RemoveComponent(selected.components, "RigidbodyDef");
				end

			elseif comp.name == "BoxCollider" then
				changed, comp.data.hx = ImguiInputFloat("hx", 0.001, comp.data.hx);
				if changed then update = true; end

				changed, comp.data.hy = ImguiInputFloat("hy", 0.001, comp.data.hy);
				if changed then update = true; end

				if ImguiButton("RemoveBoxCollider", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "BoxCollider");
					RemoveComponent(selected.components, "BoxCollider");
				end

			elseif comp.name == "Hingejoint" then
				changed, comp.data.objectA = ImguiInputText("ObjectA", comp.data.objectA, 40);
				if changed then update = true; end

				changed, comp.data.objectB = ImguiInputText("ObjectB", comp.data.objectB, 40);
				if changed then update = true; end

				changed, comp.data.anchorx, comp.data.anchory = ImguiInputFloat2("GlobalAnchor", 0.001, comp.data.anchorx, comp.data.anchory);
				if changed then update = true; end

				changed, comp.data.motor = ImguiInputCheckbox("Motor", comp.data.motor);
				if changed then update = true; end

				changed, comp.data.maxforce = ImguiInputFloat("MaxTorque", 0.01, comp.data.maxforce);
				if changed then update = true; end

				if ImguiButton("RemoveHingejoint", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Hingejoint");
					RemoveComponent(selected.components, "Hingejoint");
				end

			elseif comp.name == "Sliderjoint" then
				changed, comp.data.objectA = ImguiInputText("ObjectA", comp.data.objectA, 40);
				if changed then update = true; end

				changed, comp.data.objectB = ImguiInputText("ObjectB", comp.data.objectB, 40);
				if changed then update = true; end

				changed, comp.data.anchorx, comp.data.anchory = ImguiInputFloat2("GlobalAnchor", 0.001, comp.data.anchorx, comp.data.anchory);
				if changed then update = true; end

				changed, comp.data.axisx, comp.data.axisy = ImguiInputFloat2("GlobalAxis", 0.001, comp.data.axisx, comp.data.axisy);
				if changed then update = true; end

				changed, comp.data.lowerlimit, comp.data.upperlimit = ImguiInputFloat2("Limits", 0.001, comp.data.lowerlimit, comp.data.upperlimit);
				if changed then update = true; end

				changed, comp.data.motor = ImguiInputCheckbox("Motor", comp.data.motor);
				if changed then update = true; end

				changed, comp.data.maxforce = ImguiInputFloat("MaxForce", 0.01, comp.data.maxforce);
				if changed then update = true; end

				if ImguiButton("RemoveSliderjoint", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "Sliderjoint");
					RemoveComponent(selected.components, "Sliderjoint");
				end

			elseif comp.name == "HitTrigger" then
				changed, comp.data.triggerFunction = ImguiInputText("Function", comp.data.triggerFunction, 40);
				if changed then update = true; end

				if comp.data.object ~= selected.name then
					comp.data.object = selected.name;
					update = true;
				end

				if ImguiButton("RemoveHitTrigger", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
					ActiveScene:RemoveComponent(selected.entity, "HitTrigger");
					RemoveComponent(selected.components, "HitTrigger");
				end
			end


			if update then
				ActiveScene:SetComponent(selected.entity, comp.name, comp.data);
			end
		end

		ImguiEndListBox();

		ImguiBeginListBox("Components", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.1)});
			if ImguiButton("NewTransform", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Transform", {0, 0, 0}, {0, 0, 0}, {1, 1, 1});
				NewComponent(selected.components, "Transform", ActiveScene:GetComponent(selected.entity, "Transform"));
			end

			if ImguiButton("NewParent", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Parent", "");
				NewComponent(selected.components, "Parent", ActiveScene:GetComponent(selected.entity, "Parent"));
			end

			if ImguiButton("NewModel", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Model", "climber ball.obj", "climber pallet.png");
				NewComponent(selected.components, "Model", ActiveScene:GetComponent(selected.entity, "Model"));
			end

			if ImguiButton("NewRigidbody", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Rigidbody");
				NewComponent(selected.components, "Rigidbody", ActiveScene:GetComponent(selected.entity, "Rigidbody"));
			end

			if ImguiButton("NewRigidbodyDef", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "RigidbodyDef", false, 1.0, 1.0, 0xffff, 0xffff, false, true);
				NewComponent(selected.components, "RigidbodyDef", ActiveScene:GetComponent(selected.entity, "RigidbodyDef"));
			end

			if ImguiButton("NewBoxCollider", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "BoxCollider", 0.5, 0.5);
				NewComponent(selected.components, "BoxCollider", ActiveScene:GetComponent(selected.entity, "BoxCollider"));
			end

			if ImguiButton("NewHingejoint", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Hingejoint", "", "", 0.0, 0.0, true, 1.0);
				NewComponent(selected.components, "Hingejoint", ActiveScene:GetComponent(selected.entity, "Hingejoint"));
			end

			if ImguiButton("NewSliderJoint", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "Sliderjoint", "", "", 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, false, 1.0);
				NewComponent(selected.components, "Sliderjoint", ActiveScene:GetComponent(selected.entity, "Sliderjoint"));
			end

			if ImguiButton("NewHitTrigger", {math.floor(ScreenWidth() * 0.145), math.floor(ScreenHeight() * 0.02)}) then
				ActiveScene:CreateComponent(selected.entity, "HitTrigger", "", selected.name);
				NewComponent(selected.components, "HitTrigger", ActiveScene:GetComponent(selected.entity, "HitTrigger"));
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

	ActiveScene:Edit(dt);

	dt, running = coroutine.yield();
end
--deinit

end
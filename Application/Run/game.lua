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
	--load scenelist into table Levels
	dofile("levels.lua");
	CurrentLevel = nil;
	ActiveScene = Scene:New(3, {sys_ModelDraw, sys_Physics, sys_HitCheck});
	Entities = {};

	LevelLoad = function(level)
		dofile(level.path);
		Entities = loaded;
		ActiveScene:ClearAll();
		LoadToScene(Entities, ActiveScene);
		ActiveScene:Edit(0);
		CurrentLevel = level;
	end

	LevelLoad(Levels.Menu);

	ImguiSetup(true);
	ImguiMoveFromTitleBarOnly(true);

	mainmenu = coroutine.create(MainMenu);
	gameloop = coroutine.create(GameLoop);
	editorloop = coroutine.create(EditorLoop);
	coroutine.resume(mainmenu, 0, true);
	coroutine.resume(gameloop, 0, true);
	coroutine.resume(editorloop, 0, true);

	SetCameraPosition({0.0, 2.0, 10.0});
	SetCameraTarget({0.0, 0.0, 0.0});
	SetCameraUp({0.0, 1.0, 0.0});
	SetCameraFov(45.0);
	SetCameraProjection(CAMERA_PERSPECTIVE);

	holdingEditor = false;
	editing = false;
	ingame = false;

	collectedCoins = 0;
	timer = 0;
	score = 0;

	IncrementCoins = function(entityName)
		collectedCoins = collectedCoins + 1;

		entity = GetEntity(Entities, entityName)
		ActiveScene:RemoveEntity(entity.entity);
		RemoveEntity(Entities, entityName);
	end

	victory = function()
		score = math.floor(score);
		if CurrentLevel.highScore < score then
			CurrentLevel.highScore = score;
			file = io.open("levels.lua", "w");
			io.output(file);
			io.write("Levels = ");
			serialize(Levels);
			io.close(file);
		end
		CursorEnable(); 
		ingame = false;
		endscreen = true;
	end
end
-------------------------------------------------------------

---------------------gameloop--------------------------------
LuaFrame = function(dt, running)
	if ingame then 
		if editing then
			coroutine.resume(editorloop, dt, running);
		else
			coroutine.resume(gameloop, dt, running);
		end
	else
		coroutine.resume(mainmenu, dt, running);
	end
end
-------------------------------------------------------------

---------------------deinit----------------------------------
LuaDeinit = function()
	coroutine.resume(gameloop, 0, false);
	coroutine.resume(editorloop, 0, false);
	ImguiShutdown();
end

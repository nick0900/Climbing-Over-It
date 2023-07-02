require "helpFuncs"
require "gameUpdate"
require "inputUpdate"
require "characterinit"

testscene = Scene:New(2, {sys_ModelDraw, sys_Physics});
testsceneid = RootScene:CreateEntity();
RootScene:SetComponent(testsceneid, "Scene", testscene);

player = instantiatePlayer(testscene);

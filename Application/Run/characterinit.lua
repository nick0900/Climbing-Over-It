instantiatePlayer = function(scene)

player = {phys = {}, vis = {}}

player.phys.lowerbody = scene:CreateEntity();
scene:CreateComponent(player.phys.lowerbody, "Transform", {0, 0, 0}, {0, 0, 0, 1}, {1, 1, 1});
scene:CreateComponent(player.phys.lowerbody, "Rigidbody");
scene:CreateComponent(player.phys.lowerbody, "RigidbodyDef", true, 1.0, 0.3);
scene:CreateComponent(player.phys.lowerbody, "BoxCollider", 1.0, 1.0);

player.phys.upperbody = scene:CreateEntity();
scene:CreateComponent(player.phys.upperbody, "Transform", {0, 0, 0}, {0, 0, 0, 1}, {1, 1, 1});
scene:CreateComponent(player.phys.upperbody, "Rigidbody");
scene:CreateComponent(player.phys.upperbody, "RigidbodyDef", false, 1.0, 0.3);
scene:CreateComponent(player.phys.upperbody, "BoxCollider", 1.0, 1.0);

upperrigidbody = scene:GetComponent(player.phys.upperbody, "Rigidbody");
lowerrigidbody = scene:GetComponent(player.phys.lowerbody, "Rigidbody");
scene:CreateComponent(player.phys.upperbody, "Sliderjoint", upperrigidbody, lowerrigidbody, 0, 0, 1, -0.1, true);

player.phys.aimer = scene:CreateEntity();
scene:CreateComponent(player.phys.aimer, "Transform", {0, 0, 0}, {0, 0, 0, 1}, {1, 1, 1});

player.phys.hand = scene:CreateEntity();
scene:CreateComponent(player.phys.hand, "Transform", {0, 0, 0}, {0, 0, 0, 1}, {1, 1, 1});

player.vis.body = scene:CreateEntity();
scene:CreateComponent(player.vis.body, "Transform", {0, 1, 0}, {0, 0, 0, 1}, {1, 1, 1});
scene:CreateComponent(player.vis.body, "Model", "assets/climber body.obj", "assets/textures/climber pallet.png");
scene:CreateComponent(player.vis.body, "Parent", player.phys.upperbody);

player.vis.ball = scene:CreateEntity();
scene:CreateComponent(player.vis.ball, "Transform", {0, 0, 0}, {0, 0, 0, 1}, {1, 1, 1});
scene:CreateComponent(player.vis.ball, "Model", "assets/climber ball.obj", "assets/textures/climber pallet.png");
scene:CreateComponent(player.vis.ball, "Parent", player.phys.lowerbody);

player.vis.head = scene:CreateEntity();
scene:CreateComponent(player.vis.head, "Transform", {0, 1, 0}, {0, 0, 0, 1}, {1, 1, 1});
scene:CreateComponent(player.vis.head, "Model", "assets/climber head.obj", "assets/textures/climber eyes.png");
scene:CreateComponent(player.vis.head, "Parent", player.phys.upperbody);

player.vis.hammer = scene:CreateEntity();
scene:CreateComponent(player.vis.hammer, "Transform", {0, 1, 1}, {0, 0, 0, 1}, {1, 1, 1});
scene:CreateComponent(player.vis.hammer, "Model", "assets/climber hammer.obj", "assets/textures/climber pallet.png");
scene:CreateComponent(player.vis.hammer, "Parent", player.phys.hand);

return player;
end

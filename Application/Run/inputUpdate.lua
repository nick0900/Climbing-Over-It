inputUpdate = function(dt)
	if KeyDown(KEY_W) then
		transform = testscene:GetComponent(player.phys.upperbody, "Transform");
		transform.ty = transform.ty + 0.1;
		testscene:SetComponent(player.phys.upperbody, "Transform", transform);
	end

	if KeyDown(KEY_UP) then
		transform = testscene:GetComponent(player.vis.head, "Transform");
		transform.ty = transform.ty + 0.1;
		testscene:SetComponent(player.vis.head, "Transform", transform);
	end
	
end
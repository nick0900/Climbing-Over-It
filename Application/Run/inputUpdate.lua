baseinput = function(dt)
	if KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_P) then
		if not holdingEditor then
			editing = not editing;
			holdingEditor = true;

			if not editing then 
				CursorDisable();
				file = io.open("levelCache.lua", "w");
				io.output(file);
				io.write("loaded = ");
				serialize(Entities);
				io.close(file);
			else 
				CursorEnable(); 
				dofile("levelCache.lua");
				Entities = loaded;
				ActiveScene:ClearAll();
				LoadToScene(Entities, ActiveScene);
				for _, v in ipairs(Entities) do
					v.selected = false;
				end
				selected = nil;
			end
		end
	elseif holdingEditor then
		holdingEditor = false;
	end
end

transformIO = function(dt, transform)
	local changed = false;
	local regular = 2;
	local slow = 1/2;
	local fast = 4;
	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_RIGHT) then
		transform.tx = transform.tx + dt * fast;
		changed = true;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_RIGHT) then
		transform.tx = transform.tx + dt * slow;
		changed = true;
	elseif KeyDown(KEY_RIGHT) then
		transform.tx = transform.tx + dt * regular;
		changed = true;
	end

	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_LEFT) then
		transform.tx = transform.tx - dt * fast;
		changed = true;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_LEFT) then
		transform.tx = transform.tx - dt * slow;
		changed = true;
	elseif KeyDown(KEY_LEFT) then
		transform.tx = transform.tx - dt * regular;
		changed = true;
	end

	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_UP) then
		transform.ty = transform.ty + dt * fast;
		changed = true;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_UP) then
		transform.ty = transform.ty + dt * slow;
		changed = true;
	elseif KeyDown(KEY_UP) then
		transform.ty = transform.ty + dt * regular;
		changed = true;
	end
	
	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_DOWN) then
		transform.ty = transform.ty - dt * fast;
		changed = true;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_DOWN) then
		transform.ty = transform.ty - dt * slow;
		changed = true;
	elseif KeyDown(KEY_DOWN) then
		transform.ty = transform.ty - dt * regular;
		changed = true;
	end
	return changed;
end

debugCamera = function(dt)
	local position = GetCameraPosition();
	local target = GetCameraTarget();

	local regular = 2;
	local slow = 1/2;
	local fast = 4;
	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_D) then
		position[1] = position[1] + dt * fast;
		target[1] = target[1] + dt * fast;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_D) then
		position[1] = position[1] + dt * slow;
		target[1] = target[1] + dt * slow;
	elseif KeyDown(KEY_D) then
		position[1] = position[1] + dt * regular;
		target[1] = target[1] + dt * regular;
	end

	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_A) then
		position[1] = position[1] - dt * fast;
		target[1] = target[1] - dt * fast;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_A) then
		position[1] = position[1] - dt * slow;
		target[1] = target[1] - dt * slow;
	elseif KeyDown(KEY_A) then
		position[1] = position[1] - dt * regular;
		target[1] = target[1] - dt * regular;
	end

	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_W) then
		position[2] = position[2] + dt * fast;
		target[2] = target[2] + dt * fast;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_W) then
		position[2] = position[2] + dt * slow;
		target[2] = target[2] + dt * slow;
	elseif KeyDown(KEY_W) then
		position[2] = position[2] + dt * regular;
		target[2] = target[2] + dt * regular;
	end

	if KeyDown(KEY_LEFT_SHIFT) and KeyDown(KEY_S) then
		position[2] = position[2] - dt * fast;
		target[2] = target[2] - dt * fast;
	elseif KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_S) then
		position[2] = position[2] - dt * slow;
		target[2] = target[2] - dt * slow;
	elseif KeyDown(KEY_S) then
		position[2] = position[2] - dt * regular;
		target[2] = target[2] - dt * regular;
	end

	SetCameraPosition(position);
	SetCameraTarget(target);
end

mouseSpeed = 0.001;
aimVector = {x = 1, y = 0};
playerController = function(dt)
	
	local botBody = nil;
	local botEntity = GetEntity(Entities, "playerBot");
	if botEntity ~= nil then
		botBody = ActiveScene:GetComponent(botEntity.entity, "Rigidbody");
	end

	local moveSpeed = 7;
	local moveForce = 50;
	
	if botBody ~= nil then
		local velx, _ = GetVelocity(botBody);
		if KeyDown(KEY_D) then
			ApplyForce(botBody, moveForce * math.max((moveSpeed - velx)/moveSpeed, 0), 0);
		end

		if KeyDown(KEY_A) then
			ApplyForce(botBody, moveForce * math.min((-moveSpeed - velx)/moveSpeed, 0), 0);
		end

		local ballTransform = nil;
		local ballEntity = GetEntity(Entities, "climberBall");
		if ballEntity ~= nil then
			ballTransform = ActiveScene:GetComponent(ballEntity.entity, "Transform");
		end

		if ballTransform ~= nil then
			ballTransform.rz = ballTransform.rz - velx * 3.14;
			ActiveScene:SetComponent(ballEntity.entity, "Transform", ballTransform);
		end
	end

	local crouchSlider = nil;
	local crouchEntity = GetEntity(Entities, "playerCrouchSlider");
	if crouchEntity ~= nil then
		crouchSlider = ActiveScene:GetComponent(crouchEntity.entity, "Sliderjoint");
	end

	local topBody = nil;
	local topEntity = GetEntity(Entities, "playerTop");
	if topEntity ~= nil then
		topBody = ActiveScene:GetComponent(topEntity.entity, "Rigidbody");
	end

	if crouchSlider ~= nil and botBody ~= nil and topBody ~= nil then
		local x;
		local y;
		x, y = GetWorldCentre(topBody);
		x, y = GetLocalPoint(botBody, x, y);
		local length = Magnitude(x, y);
		local targetLength = 0.8;

		if KeyDown(KEY_W) then
			targetLength = 1.5;
		elseif KeyDown(KEY_S) then
			targetLength = 0.3;
		end

		SetMotorSpeed(crouchSlider, (targetLength - length) * 10);
	end
	
	local dx;
	local dy;
	dx, dy = MouseDelta();
	dx = dx * mouseSpeed;
	dy = -dy * mouseSpeed;

	aimVector.x = aimVector.x + dx;
	aimVector.y = aimVector.y + dy;

	local aimx;
	local aimy;
	aimx, aimy = Normal(aimVector.x, aimVector.y);
	aimLen = Magnitude(aimVector.x, aimVector.y);

	aimLen = math.min(aimLen, 1.5);

	aimVector.x = aimx * aimLen;
	aimVector.y = aimy * aimLen;

	local headTransform = nil;
	local headEntity = GetEntity(Entities, "climberHead");
	if headEntity ~= nil then
		headTransform = ActiveScene:GetComponent(headEntity.entity, "Transform");
	end

	if headTransform ~= nil then
		headTransform.ry =  (aimVector.x / 1.5) * 30;
		headTransform.rx =  -(aimVector.y / 1.5) * 20;
		ActiveScene:SetComponent(headEntity.entity, "Transform", headTransform);
	end

	local torsoTransform = nil;
	local torsoEntity = GetEntity(Entities, "climberBody");
	if torsoEntity ~= nil then
		torsoTransform = ActiveScene:GetComponent(torsoEntity.entity, "Transform");
	end

	if torsoTransform ~= nil then
		torsoTransform.ry =  (aimVector.x / 1.5) * 30;
		ActiveScene:SetComponent(torsoEntity.entity, "Transform", torsoTransform);
	end

	local aimHinge = nil;
	local aimhingeEntity = GetEntity(Entities, "playerAimHinge");
	if aimhingeEntity ~= nil then
		aimHinge = ActiveScene:GetComponent(aimhingeEntity.entity, "Hingejoint");
	end

	local aimSlider = nil;
	local aimSliderEntity = GetEntity(Entities, "playerHandSlider");
	if aimSliderEntity ~= nil then
		aimSlider = ActiveScene:GetComponent(aimSliderEntity.entity, "Sliderjoint");
	end

	local handBody = nil;
	local handEntity = GetEntity(Entities, "playerHand");
	if handEntity ~= nil then
		handBody = ActiveScene:GetComponent(handEntity.entity, "Rigidbody");
	end
	
	if aimHinge ~= nil and aimSlider ~= nil and topBody ~= nil and handBody ~= nil then
		local aimSpeed = 15;
		local stretchSpeed = 10;

		local x;
		local y;
		x, y = GetWorldCentre(handBody);
		x, y = GetLocalPoint(topBody, x, y);
		local length = Magnitude(x, y);

		local angle = math.atan(aimVector.y * x - aimVector.x * y, aimVector.x * x + aimVector.y * y);

		SetMotorSpeed(aimHinge, math.sin(angle / 2) * aimSpeed);

		SetMotorSpeed(aimSlider, (aimLen - length) * stretchSpeed);
	end
	
	--------------------CameraUpdate------------------------

	local topTransform = nil;
	if topEntity ~= nil then
		topTransform = ActiveScene:GetComponent(topEntity.entity, "Transform");
	end

	if topTransform ~= nil then 
		SetCameraPosition({topTransform.tx, topTransform.ty + 2, topTransform.tz + 10});
		SetCameraTarget({topTransform.tx, topTransform.ty, topTransform.tz});
	end
end
holdingEditor = false;
baseinput = function(dt)
	if KeyDown(KEY_LEFT_CONTROL) and KeyDown(KEY_P) then
		if not holdingEditor then
			editing = not editing;
			holdingEditor = true;
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

playerController = function(dt)
	local botBody = ActiveScene:GetComponent(GetEntity(Entities, "playerBot"), "Rigidbody");

	local moveSpeed = 2;
	
	if KeyDown(KEY_D) then
		position[1] = position[1] + dt * fast;
		target[1] = target[1] + dt * fast;
	end

	if KeyDown(KEY_A) then
		position[1] = position[1] - dt * fast;
		target[1] = target[1] - dt * fast;
	end
end
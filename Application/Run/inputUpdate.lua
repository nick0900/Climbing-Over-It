holdingP = false;
baseinput = function(dt)
	if KeyDown(KEY_P) then
		if not holdingP then
			editing = not editing;
			holdingP = true;
		end
	elseif holdingP then
		holdingP = false;
	end
end
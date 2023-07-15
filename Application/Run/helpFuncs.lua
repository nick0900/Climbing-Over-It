hello = function ()
	print('Hello world even even more hello for ever!!!');
end

tablePrint = function (table)
	print(table);
	for key, value in pairs(table) do 
		if type(value) == "userdata" then
			print(key .. " " .. type(value));
			userMeta = getmetatable(value);
			if userMeta ~= nil then
				print("//-------------Userdata Meta--------------//");
				tablePrint(userMeta);
				print("//----------------------------------------//");
			end
		elseif type(value) == "table" then
			print(key .. " " .. type(value));
			print("//----------------SubTable----------------//");
			if value == table then 
				print("Self")
			else
				tablePrint(value);
			end
			print("//----------------------------------------//");
		elseif type(value) == "function" then
			print(key .. " " .. type(value));
		else
			print(key .. " " .. type(value) .. " " .. tostring(value));
		end
	end

	meta = getmetatable(table);
	if meta ~= nil then
		print('\nmetatable:');
		tablePrint(meta);
	end
end

reloadProject = function()
	dofile("game.lua");
	dofile("helpFuncs.lua");
	dofile("crLoops.lua");
	dofile("inputUpdate.lua");
end
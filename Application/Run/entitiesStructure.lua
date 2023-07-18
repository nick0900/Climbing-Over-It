function NewComponent(self, name, def)
	local i = #self + 1;

	for j, v in ipairs(self) do
		if v.name == name then 
		i = j;
		break;
		end
	end

	self[i] = {};
	self[i].name = name;
	self[i].data = def;
	table.sort(self, function (k1, k2) return k1.name < k2.name end );
end

function RemoveComponent(self, name)
	for i, v in ipairs(self) do
		if v.name == name then
			table.remove(self, i);
			return;
		end
	end
end

function NewEntity(self, name, scene)
	for _, v in ipairs(self) do
		if v.name == name then return end
	end

	local i = #self + 1;
	self[i] = {};
	self[i].selected = false;
	self[i].name = name;
	self[i].entity = scene:CreateEntity();
	self[i].components = {};
	table.sort(self, function (k1, k2) return k1.name < k2.name end );
end

function RemoveEntity(self, name)
	for i, v in ipairs(self) do
		if v.name == name then
			table.remove(self, i);
			return;
		end
	end
end

function GetEntity(self, name)
	for _, v in ipairs(self) do
		if v.name == name then
			return v;
		end
	end
	return nil;
end

function DuplicateEntity(entity, entities, scene)
	local newname = entity.name;
	while GetEntity(entities, newname) ~= nil do
		local num = tonumber(string.sub(newname, -2), 10);
		if (num == nil) then
			newname = newname .. "02"
		else
			num = num + 1;
			if num < 10 then
				num = "0" .. tostring(num);
			else
				num = tostring(num);
			end
			newname = string.sub(newname, 1, -3) .. num;
		end
	end

	NewEntity(entities, newname, scene);
	new = GetEntity(entities, newname);

	local delayed = {};
	for _, comp in ipairs(entity.components) do
		if comp.name == "Hingejoint" or comp.name == "Sliderjoint" then
			table.insert(delayed, {name = comp.name, data = comp.data});
		else
			if comp.name == "HitTrigger" then 
				comp.data.object = newname;
			end
			scene:SetComponent(new.entity, comp.name, comp.data);
			NewComponent(new.components, comp.name, scene:GetComponent(new.entity, comp.name));
		end
	end

	for _, v in ipairs(delayed) do 
		scene:SetComponent(new.entity, v.name, v.data);
		NewComponent(new.components, v.name, scene:GetComponent(new.entity, v.name));
	end
end

function serialize (o)
	if type(o) == "number" then
		io.write(o);
    elseif type(o) == "string" then
        io.write(string.format("%q", o));
	elseif type(o) == "boolean" then
        if o then 
			io.write("true");
		else
			io.write("false");
		end
	elseif type(o) == "userdata" then
        io.write("nil");
    elseif type(o) == "table" then
        io.write("{\n");
        for k,v in pairs(o) do
			io.write("  [")
			serialize(k)
			io.write("] = ")
			serialize(v);
			io.write(",\n");
        end
        io.write("}\n");
    end
end

function LoadToScene(self, scene)
	local delayed = {};
	for _, v in ipairs(self) do
		v.entity = scene:CreateEntity();
		for _, comp in ipairs(v.components) do
			if comp.name == "Hingejoint" or comp.name == "Sliderjoint" then
				table.insert(delayed, {entity = v.entity , component = comp.name, data = comp.data});
			else
				scene:SetComponent(v.entity, comp.name, comp.data);
			end
		end
	end

	for _, v in ipairs(delayed) do 
		scene:SetComponent(v.entity, v.component, v.data);
	end
end

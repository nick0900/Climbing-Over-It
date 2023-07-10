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
end

function DuplicateEntity(self, scene)
	
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
	for _, v in ipairs(self) do
		v.entity = scene:CreateEntity();
		for _, comp in ipairs(v.components) do
			scene:SetComponent(v.entity, comp.name, comp.data);
		end
	end
end

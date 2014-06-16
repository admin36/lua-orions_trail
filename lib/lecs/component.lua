local Component = {}

function Component:new(...)
    if #arg == 0 then
        --TODO: handle no arg error
    elseif #arg == 1 then
        self._name = arg[1]
    elseif #arg == 2 then
        self._name = arg[1]
        self._schema = arg[2]
        for k, v in pairs(arg[2]) do
            self[k] = v
        end
    end    
    
    return self
end

function Component:resetSchema()
    for k, v in pairs(self._schema) do
        self[k] = v
    end
end

return Component
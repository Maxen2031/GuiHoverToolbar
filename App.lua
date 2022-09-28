

local ReplicatedStorage = game:GetService
--local Utility = 

local ToolBar = {}
ToolBar.__index = ToolBar

local toolbarConnections = {}

local function pathReference(object, path)
    local pathTable = path:split("/")

    for _, pathObject in pairs(pathTable) do
        object = object[pathObject]
    end
end

local function initializeHoverEvents(self)
    local connections = {}

    for _, ui in pairs(self.hover) do
        local object = ui

        if (self.path) then pathReference(object, self.path) end

        local connection = ui.MouseEnter:Connect(function()
            
        end)

        table.insert(connections, connection)
    end
end

function ToolBar.new(self)
    self = setmetatable(self, {})

    initializeHoverEvents(self)
end

return ToolBar
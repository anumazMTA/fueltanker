-- Settings

local zones = { {x,y,z}, {x,y,z} } -- Zones to fill tanker
local tankerModel = 584 -- Petrol trailer vehicle ID
local costPerLiter = 1 -- $ per liter
local maximumDistance = 10 -- maximum distance between the trailer & refueled vehicle
local maximumCapacity = 5000 -- maximum capacity, in liters, of fuel in the fuel trailer
local dataName = "fuelCapacity" -- element data name used

-- Initialize
addEventHandler("onResourceStart", resourceRoot, function populateFuelTanks()
    local trailerTable = {}
    for _, element in pairs(getElementsByType("vehicle")) do
        if getElementModel(element) == tankerModel then
            table.insert(trailerTable, element)
        end
    end
    
    populateElementData(trailerTable)
end)

function populateElementData(trailerTable)
    for k, v in pairs(trailerTable) do
        -- insert sql with result as variable capacity
        
        setElementData(v, dataName, capacity)
    end
end


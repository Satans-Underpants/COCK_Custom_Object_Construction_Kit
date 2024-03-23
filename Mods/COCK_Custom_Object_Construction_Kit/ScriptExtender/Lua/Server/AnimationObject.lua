-- An AnimationObject contains
-- Object Name [Game Object Name]  
-- Object UUID [Game Object UUID]
-- Spell Name [Name of spell that starts animation]


-- Unused for now - might be interesting for the future

AnimationObject = {}
AnimationObject.__index = AnimationObject

-- Create a new AnimationObject
function AnimationObject.new(name, uuid, spell)
    local self = setmetatable({}, AnimationObject)
    self.entries = {name, uuid, spell}
    return self
end

-- make iterable
function AnimationObject:iterate()
    local index = 0
    return function()
        index = index + 1
        return self.entries[index]
    end
end

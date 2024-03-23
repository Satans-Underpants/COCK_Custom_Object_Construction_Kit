-- An AnimationObject contains
-- Object Name [Game Object Name]  
-- Object UUID [Game Object UUID]
-- Spell Name [Name of spell that starts animation]
-- Animation [Animation UUID]

-- some lua magic


AnimationObject = {}
AnimationObject.__index = AnimationObject



-- Create a new AnimationObject
function AnimationObject.new(objectName, objectId, animSpell, animID)
    local self = setmetatable({}, AnimationObject)
    self.objectName = objectName
    self.objectID = objectId
    self.animSpell = animSpell
    self.animID = animID
    return self
end

print("COCKANIMATION ", COCKAnimation)
print("AnimationObject ", AnimationObject)
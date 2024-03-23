Ext.Osiris.RegisterListener("UseStarted", 2, "after", function(character, item)

    -- clean item by using getItembyuniquemapkey
    local itemName = getNameByUniqueMapkey(item)
    
    print("Used ", itemName)

    if COCK_ANIMOBJECTS[itemName] then

        -- DEBUG, can later be deleted and COCK_ANIMOBJECTS[itemName] used instead
        local cock = COCK_ANIMOBJECTS[itemName]

        print("Object Name = ", cock.objectName)
        print("Object UUID = ", cock.objectID)
        print("Spell Name = ", cock.animSpell)
        print("Animation UUID = ", cock.animID)

        -- Osi.UseSpell(character, cock.animSpell, character)
        Osi.PlayAnimation(character, cock.animID, "")
        
    end 
end)

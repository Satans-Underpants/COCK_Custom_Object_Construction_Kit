Ext.Osiris.RegisterListener("UseStarted", 2, "after", function(character, item)
    
    print("Used ", item)

    if OBJECT_ANIMATION[item] then

        print("Spell ", OBJECT_ANIMATION[item] )

        Osi.UseSpell(character, OBJECT_ANIMATION[item], character)
        
    end 
end)
Ext.Osiris.RegisterListener("UseStarted", 2, "after", function(character, item)
    
    if Osi.IsPlayer(character) then
        if contains(spawnedItems(), item) then
            Osi.UseSpell(character, spell, character)
            _P("Start Animation")
        end
    end

end)
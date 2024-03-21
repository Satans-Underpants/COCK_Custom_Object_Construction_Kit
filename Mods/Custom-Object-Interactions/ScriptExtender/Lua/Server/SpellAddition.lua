-- add spells on game startup
function OnSessionLoaded()

    -- add spells for all partymembers

    Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(_, _)
        local party = Osi.DB_PartyMembers:Get(nil)
        for i = #party, 1, -1 do
            addCockSpells(party[i][1])
        end
    end)

    Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(actor)
        addCockSpells(actor)
    end)
end


-- Add spell if actor doesn't have it yet
function TryAddSpell(actor, spellName)
    if  Osi.HasSpell(actor, spellName) == 0 then
        Osi.AddSpell(actor, spellName)
    end
end

function addCockSpells(entity)
    TryAddSpell(entity, "COCK_UTILS")
    TryAddSpell(entity, "COCK_OBJECTS")
end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
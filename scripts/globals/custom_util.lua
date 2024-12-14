xi.customutil = xi.customutil or {}

xi.customutil.hasEnmity = function(player)
    local party = player:getAlliance()
    for _, partyMember in pairs(party) do
         if partyMember:hasEnmity() then
            local a, b = partyMember:hasEnmity(), true
                     if a==b then
                        return true
                     end
                        end
                        return false
         end 
end
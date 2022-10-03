local Players = game:GetService("Players")
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()
    if tostring(NameCallMethod) == "Kick" then        
        return nil
    end    
    return OldNameCall(Self, ...)
end)

local checkHWID = loadstring(game:HttpGet("https://pastebin.com/raw/k2K901C5"))()
local userHWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i, v in pairs(checkHWID) do
    if v == userHWID then 
        if game.GameId == 3027710332 then 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/Budokai.lua"))()
        else
            print('Game Not Supported')
        end
    end
end
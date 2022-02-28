local checkHWID = loadstring(game:HttpGet("https://pastebin.com/raw/k2K901C5"))()
local userHWID = game:GetService("RbxAnalyticsService"):GetClientId()

local VirtualUser = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

for i, v in pairs(checkHWID) do
    if v == userHWID then 
        if game.GameId == 3027710332 then 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/Budokai.lua"))()
        elseif game.GameId == 578392296 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/LSOWDHUBXDNIGGABALLS.lua"))()
        elseif game.GameId == 3368175675 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/SwordFactory.lua"))()
        else
            print('Game Unsupported')
        end
    end
end

function AntiAFK()
    local VirtualUser = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    end)
end


if game.GameId == 3027710332 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/Budokai.lua"))()
    AntiAFK()
elseif game.GameId == 578392296 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/SowdhubCrack.lua"))()
elseif game.GameId == 3368175675 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/SwordFactory.lua"))()
    AntiAFK()
elseif game.GameId == 1359573625 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/Deepwoken.lua"))()
else
    print('Game Unsupported')
end
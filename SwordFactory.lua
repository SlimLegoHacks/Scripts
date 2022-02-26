
_G.GodMode = true
spawn(function()
while _G.GodMode do
    wait()
    for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
        if v.Name == "LinkedSword" then
            v:Destroy()
        end
    end
end
end)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("- No GUI yet lol") 
local w2 = w:CreateFolder("Rejoin to Disable")

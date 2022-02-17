-- If you somehow got access to this script, tell me how please k thx.
function autoPunch()
    local args = {
    [1] = false,
    [2] = true
    }         
    game:GetService("ReplicatedStorage").Events.Attacks.BasicAttack:FireServer(unpack(args))
end

function autoZVanish()  
    game:GetService("ReplicatedStorage").Events.Movement.Dash:FireServer()
end

function ReplenishVitals()
    local loopCount = 0
    while true do
        wait()
        game:GetService("ReplicatedStorage").Events.Nap:FireServer()
        loopCount = loopCount + 1
        if loopCount >= 100 then
            break;
        end
    end
end

function farmShadow()
    wait()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    wait(8)
    game:GetService("ReplicatedStorage").Events.SpawnShadow:FireServer()
end






local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("General") 
local w2 = w:CreateFolder("-")

w2:Toggle("AutoPunch",function(bool)
    shared.autopunchtoggle = bool
    spawn(function()
    while shared.autopunchtoggle do
        autoPunch()
        wait(0.2)
        if shared.autopunchtoggle == false then
            break;
        end
    end
end)
end)

w2:Toggle("AutoZVanish", function(bool)
    shared.zvanishtoggle = bool
    spawn(function()
        while shared.zvanishtoggle do
        autoZVanish()
        wait(0.1)
        if shared.zvanishtoggle == false then
            break;
        end
    end
end)
end)

w2:Button("VitalReplenish", function()
        ReplenishVitals()
end)

w2:Button("Reset", function(bool)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

w2:Button("Gravity Chamber TP", function()
    local args = {
        [1] = "Dr. Briefs",
        [2] = "Yes"
    }
    
    game:GetService("ReplicatedStorage").Events.NPCEvents.Interact:FireServer(unpack(args)) 
end)

w2:Button("HBTC TP", function()
    local args = {
        [1] = "Mr. Popo",
        [2] = "Yes"
    }
    
    game:GetService("ReplicatedStorage").Events.NPCEvents.Interact:FireServer(unpack(args)) 
end)

local y = library:CreateWindow("Shadow Farm") 
local y2 = y:CreateFolder("-")

y2:Toggle("Farm Shadow", function(bool)
    shared.shadowtoggle = bool
spawn(function()
    while shared.shadowtoggle do
        print('working')
        wait()
        if not game.Workspace:FindFirstChild("Shadow Not_Siim2") then
            print('working')
            wait()
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
            wait(15)
            game:GetService("ReplicatedStorage").Events.SpawnShadow:FireServer()
            wait(1)
        end
    end
end)
spawn(function()
    while shared.shadowtoggle do
        wait(120)
        if shared.shadowtoggle == false then
            break;
        end
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
spawn(function()
    while shared.shadowtoggle do
        autoPunch()
        wait(0.2)
    end
end)
spawn(function()
    while shared.shadowtoggle do
        autoZVanish()
        wait(0.2)
    end
end)
spawn(function()
    while shared.shadowtoggle do
        wait(5)
        if shared.shadowtoggle == false then
            break;
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Shadow Not_Siim2"].HumanoidRootPart.CFrame * CFrame.new(0,0,0.0001)
    end
end)
end)

y2:Button("WIP", function()
    print("WIP")
end)

local z = library:CreateWindow("DestroyGui") 
local z2 = z:CreateFolder("-")

z2:DestroyGui()
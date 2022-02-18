-- If you got access to this script, tell me how please k thx. Slim#0003
local plyrName = game:GetService("Players").LocalPlayer.Name
local shadowPlyrName = "Shadow".." "..plyrName
-- AntiAFK
local VirtualUser = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
-- Functions
-- Functions
-- Functions
-- Functions
-- Functions
spawn(function()
    wait(0.1)
    local args = {
        [1] = "EndAdjustment"
    }

    game:GetService("ReplicatedStorage").Events.ChangePower:FireServer(unpack(args))
end)

function autoPunch()
    game.Workspace:WaitForChild(shadowPlyrName)
    local args = {
    [1] = false,
    [2] = true
    }         
    game:GetService("ReplicatedStorage").Events.Attacks.BasicAttack:FireServer(unpack(args))
end

function autoZVanish()  
    game.Workspace:WaitForChild(shadowPlyrName)
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

function useDemonCape()
    local args = {
        [1] = CFrame.new(Vector3.new(-185.654296875, 210.955322265625, -3503.25), Vector3.new(0.8912745714187622, -0.0082553680986166, -0.45338907837867737)),
        [2] = "Demon Cape",
        [4] = Vector3.new(-185.654296875, 210.955322265625, -3503.25)
    }

    game:GetService("ReplicatedStorage").Events.Attacks.Skill:FireServer(unpack(args))
end
-- GUI + SHADOWFARM
-- GUI + SHADOWFARM
-- GUI + SHADOWFARM
-- GUI + SHADOWFARM
-- GUI + SHADOWFARM
-- GUI + SHADOWFARM
-- GUI + SHADOWFARM
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Budokai") 
local w2 = w:CreateFolder("-")

w2:Toggle("Farm Shadow", function(bool)
    shared.shadowtoggle = bool
    spawn(function()
        while shared.shadowtoggle do
            print('working')
            wait()
            if not game.Workspace:FindFirstChild(shadowPlyrName) then
                print('working')
                wait()
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                wait(10)
                useDemonCape()
                wait(1)
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
            wait(10)
            useDemonCape()
        end
    end)
    spawn(function()
        while shared.shadowtoggle do
            wait(5)
            if shared.shadowtoggle == false then
                break;
            end
            local shadow = game:GetService("Workspace")[shadowPlyrName].HumanoidRootPart.Position
            game.Players.LocalPlayer.Character:MoveTo(shadow)
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
    end)

-- w2:Toggle("AutoPunch",function(bool)
--     shared.autopunchtoggle = bool
--     spawn(function()
--     while shared.autopunchtoggle do
--         autoPunch()
--         wait(0.2)
--         if shared.autopunchtoggle == false then
--             break;
--         end
--     end
-- end)
-- end)

-- w2:Toggle("AutoZVanish", function(bool)
--     shared.zvanishtoggle = bool
--     spawn(function()
--         while shared.zvanishtoggle do
--         autoZVanish()
--         wait(0.1)
--         if shared.zvanishtoggle == false then
--             break;
--         end
--     end
-- end)
-- end)

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

w2:DestroyGui()

local y = library:CreateWindow("Copy Planet Coords") 
local y2 = y:CreateFolder("-")

y2:Dropdown("Copy Coords",{"G.S.S","Earth","Olbus","Netfiss","Polaris","Majin Planet","Sadala","Namek"},true,function(Planet)
    if Planet == "G.S.S" then
        setclipboard('W13245')
    elseif Planet == "Earth" then
        setclipboard('S98121')
    elseif Planet == "Olbus" then
        setclipboard('N10933')
    elseif Planet == "Netfiss" then
        setclipboard('E12994')
    elseif Planet == "Polaris" then
        setclipboard('N00442')
    elseif Planet == "Majin Planet" then
        setclipboard('W81238')
    elseif Planet == "Sadala" then
        setclipboard('W15774')
    elseif Planet == "Namek" then
        setclipboard('S12812')
    end
end)
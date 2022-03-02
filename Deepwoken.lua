local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Vitals")
local x = library:CreateWindow("PVP Helper")
local z = library:CreateWindow("Information")

local z2 = z:CreateFolder("Reinject Upon Death")

local z3 = z:CreateFolder("Discord @ Slim#0003")

local b = w:CreateFolder("Health")

local b2 = w:CreateFolder("Ether")

local x2 = x:CreateFolder("Ether")

local x3 = x:CreateFolder("[Mantra Placeholder]")

local x4 = x:CreateFolder("[Mantra Placeholder]")

local x5 = x:CreateFolder("[Mantra Placeholder]")

local x6 = x:CreateFolder("[Mantra Placeholder]")

local x7 = x:CreateFolder("[Mantra Placeholder]")

local x8 = x:CreateFolder("[Mantra Placeholder]")

local x9 = x:CreateFolder("[Mantra Placeholder]")

local b10 = w:CreateFolder("Sanity")

wait(2)

local wallyGui = "done"
local localname = game.Players.LocalPlayer.Name
print(localname)
local localstats = game:GetService("Workspace").Live:FindFirstChild(localname)

    for i,v in pairs(game.CoreGui:GetChildren()) do
        wait()
        if v.Name ~= "RobloxGui" and v.Name ~= "PurchasePrompt" and v.Name ~= "RobloxNetworkPauseNotification" and v.Name ~= "RobloxPromptGui" and v.Name ~= "ThemeProvider" and v.Name ~= "HeadsetDisconnectedDialog" and v.Name ~= "DevConsoleMaster" and not v:FindFirstChild("PropertiesFrame") then
            for o,b in pairs(v:GetChildren()) do
                print(b.Name)
                if b.Name == "Window" and b.Image == "rbxassetid://4921672704" then
                print("doing")
                wallyGui = b.Parent
                end
            end
        end
    end
    
    print(wallyGui)
    
spawn(function() 
    wait(0.1)
    for i,v in pairs(wallyGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Text == "Ether" then
            while true do
                wait()
                v.Text = "Ether = ".. math.floor(localstats.Ether.Value)
            end
        end
    end
end)
spawn(function() 
    wait(2)
    for i,v in pairs(wallyGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Text == "Ether" then
            while true do
                wait()
                v.Text = "Ether = ".. math.floor(localstats.Ether.Value)
            end
        end
    end
end)
local currentHp = game.Players.LocalPlayer.Character.Humanoid.Health
spawn(function() 
    wait(0.1)
    for i,v in pairs(wallyGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Text == "Health" then
            while true do
                wait()
                v.Text = "Health = ".. currentHp
            end
        end
    end
end)

spawn(function() 
    wait(0.1)
    for i,v in pairs(wallyGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Text == "Sanity" then
            while true do
                wait()
                v.Text = "Sanity = ".. math.floor(localstats.Sanity.Value)
            end
        end
    end
end)

spawn(function()
    while true do
        wait()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                for o,b in pairs(v:GetChildren()) do
                    if b:IsA("Folder") and b.Name == "Mantra" then
                        for p,n in pairs(wallyGui:GetDescendants()) do
                            if n:IsA("TextLabel") and n.Text == v.DefaultName.Value .." = ".. v.Cost.Value then
                                if v.Cost.Value > localstats.Ether.Value then
                                    n.TextColor3 = Color3.fromRGB(255, 0, 0)
                                elseif v.Cost.Value < localstats.Ether.Value then
                                    n.TextColor3 = Color3.fromRGB(0, 255, 0)
                                end
                                break
                            end
                            if n:IsA("TextLabel") and n.Text == "[Mantra Placeholder]" then
                                n.Text = v.DefaultName.Value .." = ".. v.Cost.Value
                                break
                            end
                        end
                    end
                end
            end
        end
    end
end)
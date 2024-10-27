local module = {}

module["Name"] = "MM2 Aim Trainer"

-- Function to find the closest enemy player
local function findClosestEnemy()
    local player = game:GetService("Players").LocalPlayer
    local myTeam = player.Team
    local myPosition = player.Character and player.Character.PrimaryPart.Position
    local closestEnemy, closestDistance = nil, math.huge

    if myPosition then
        for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
            if otherPlayer ~= player and otherPlayer.Team ~= myTeam and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local enemyPosition = otherPlayer.Character.HumanoidRootPart.Position
                local distance = (myPosition - enemyPosition).Magnitude

                if distance < closestDistance then
                    closestEnemy = otherPlayer
                    closestDistance = distance
                end
            end
        end
    end

    return closestEnemy
end

-- Text element to show feedback
module[1] = {
    Type = "Text",
    Args = {"Created By: Unknown A Former Yarhm Dev."}
}

-- Define module button to execute shooting function
module[2] = {
    Type = "Button",
    Args = {"Shoot Closest Enemy", function(Self)
        local closestEnemy = findClosestEnemy()
        if closestEnemy then
            local enemyPosition = closestEnemy.Character.HumanoidRootPart.Position
            local args = {
                [1] = 1,
                [2] = enemyPosition
            }
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Vampire's Gun").GunServer.ShootStart:FireServer(unpack(args))
            print("Shot fired at " .. closestEnemy.Name)
            
            -- Update the text element with feedback
            module[3].Args[1] = "Shot fired at " .. closestEnemy.Name .. "!"
        else
            print("No enemies found.")
            module[3].Args[1] = "No enemies found."
        end
    end}
}

-- Text element for dynamic feedback
module[3] = {
    Type = "Text",
    Args = {"Awaiting action..."}
}

_G.Modules[#_G.Modules + 1] = module
return module

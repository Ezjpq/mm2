local module = {}
module["gameId"] = 0 -- Restrict module to a certain game ID only. 0 allows all games

module["Name"] = "MM2 Aim Trainer"

module[1] = {
    Type = "Text",
    Args = {"Created By: Unknown A Former Yarhm Dev Now Not."},
}

module[2] = {
    Type = "Button",
    Args = {
        "Shoot Closest Enemy", 
        function(Self) -- Self is the button's TextButton object, can be used for effects, changing the text, etc
            local Players = game:GetService("Players")
            local localPlayer = Players.LocalPlayer
            local closestPlayer = nil
            local closestDistance = math.huge -- Start with a very large distance
            
            -- Loop through all players to find the closest enemy
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= localPlayer and player.Team ~= localPlayer.Team and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (localPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                end
            end
            
            -- If we found a closest player, shoot them
            if closestPlayer then
                local targetPosition = closestPlayer.Character.HumanoidRootPart.Position
                local args = {
                    [1] = 1,
                    [2] = targetPosition -- Use target position as the vector
                }

                local gun = localPlayer.Character:FindFirstChild("Vampire's Gun")
                local gunServer = gun and gun:FindFirstChild("GunServer")

                if gunServer then
                    gunServer.ShootStart:FireServer(unpack(args))
                    print("Shot at " .. closestPlayer.Name)
                else
                    print("GunServer not found!")
                end
            else
                print("No enemies in range!")
            end
        end,
    }
}

_G.Modules[#_G.Modules + 1] = module

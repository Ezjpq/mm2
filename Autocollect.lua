task.spawn(function()
    while wait(0.1) do
        game:GetService("ReplicatedStorage").Trade.AcceptRequest:FireServer()
        
        local args = {
            [1] = 285646582
        }
        
        game:GetService("ReplicatedStorage").Trade.AcceptTrade:FireServer(unpack(args))
    end
end)

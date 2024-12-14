local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("utohatt")

wait(10)
--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/PS99/main/Kittyware.lua'))()

task.spawn(function()
    wait(10)
    print("hatsing")
    script_key="PzcFLuJeAvYmaetHLXDZASrmPjukMAEB";
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a2369ce34d44187610ac9bf5039c37ab.lua"))()

    wait(60)
    -- Get the player's character
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Teleport to the specified position
    character.HumanoidRootPart.Position = Vector3.new(2113.27, 16.40, -20880.16)
end)

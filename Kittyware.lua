local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("utohatt")

wait(16)
--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/Utomel/main/AllforOne'))()

local function serverHop(id)
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local sfUrl = "https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=%s&excludeFullGames=true"
    local req = request({
        Url = string.format(sfUrl, id, "Desc", 100)
    })
    local body = HttpService:JSONDecode(req.Body)
    task.wait(0.2)
    local servers = {}
    if body and body.data then
        for i, v in next, body.data do
            if type(v) == "table" and v.playing >= 1 and v.id ~= game.JobId then
                table.insert(servers, 1, v.id)
            end
        end
    end
    local randomCount = #servers
    if not randomCount then
        randomCount = 2
    end
    TeleportService:TeleportToPlaceInstance(id, servers[math.random(1, randomCount)], Players.LocalPlayer)
end

task.spawn(function()
    print("Auto Reconnect Executed!")
    game:GetService("GuiService").ErrorMessageChanged:Connect(function(errorMessage)       
        game.Players.LocalPlayer:Kick("Found An Error, Reconnecting...")
        print("Error message:", errorMessage)
        print("Found An Error, Reconnecting...")
        wait(0.1)
        serverHop(8737899170) -- Attempt to teleport to another server
    end);
end)

task.spawn(function()
    wait(10)
    print("hatsing")
    -- getgenv().AuthKey = "HUGE_HYARsu18jErU"
    -- getgenv().LoadSettings = {
    --     Example_Setting = 2
    -- }
    -- loadstring(game:HttpGet("https://HugeGames.io/ps99"))()
    getgenv().AuthKey = "HUGE_HYARsu18jErU"
    getgenv().LoadSettings = {
        disable_globalhatch = true,
        loadFromEnv = false,
        ignoreSave = false,
        allowMultiExecution = true,
        ToggleBind = Enum.KeyCode.RightBracket,
        loadConfig = "Kr4m" -- Will not load unless the Config Exists
    }

    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3acbf8ea627f090532fc8af027438e17.lua"))()
end)

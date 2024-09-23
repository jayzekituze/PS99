local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("utohatt")

wait(13)
--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/PS99/main/Kittyware.lua'))()

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
        serverHop(17503543197) -- Attempt to teleport to another server
    end);
end)

task.spawn(function()
    wait(15)
    print("hatsing")
    -- script_key="LjuHTohHvbxairVCxFgupfICGfBsVWki";
    -- loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a2369ce34d44187610ac9bf5039c37ab.lua"))()
    getgenv().KiTTYWARE_Elemental = {
        Farm_Normal_Breakables = true,
        Farm_Special_Breakables = false, -- Farm Special Breakables like the Big Chests
        Pets_Per_Breakable = 2,
    
        Egg_Number = 241,
        Auto_Hatch = true,
        Auto_Mail_Huges = false,
        Auto_Mail_Username = "holykram",
    
        Only_Catch_Huges = true, -- If false will look for Huges, then Quest-Pets, then Easiest/Highest % Chance
        Auto_Catch_Pets = true,
        Auto_Cube_Merchant = true,
    
        Discord_UserID = "402681518197047306",
        Discord_WebhookUrl = "https://discord.com/api/webhooks/1149765527389077534/OAAbl2pZosZJrMQprv_IynhwIj9EGIzf5O_qRyCMplPVrpdxe50dj7VGGuC4Hh_GeNDr",
        Fps_Boost = true,
    }
    
    script_key = "LjuHTohHvbxairVCxFgupfICGfBsVWki";
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b2d2d7d3e5cbec16ec501a759f3830ce.lua"))()
end)

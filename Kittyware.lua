local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("utohatt")

wait(10)
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
        serverHop(8737899170) -- Attempt to teleport to another server
    end);
end)

task.spawn(function()
    wait(10)
    print("hatsing")
    getgenv().LoadSettings = {["ExclusiveDaycare"] = {["UseMachine"] = false, ["Equips"] = false, ["DayTier"] = 3}, ["Webhooks"] = {["Statistics"] = {["Send"] = false, ["Minutes"] = 10, ["Webhook"] = "", ["ShowUsername"] = false}, ["DiscordUserId"] = "175690643752878080", ["Daycare"] = {["Send"] = false, ["PingUser"] = false, ["Webhook"] = "", ["ShowUsername"] = false}, ["Hatching"] = {["Rarities"] = {}, ["Webhook"] = "", ["Send"] = false, ["PingUser"] = false, ["ShowUsername"] = false}}, ["Lootboxes"] = {["OpenGiftbags"] = false, ["Lootboxes"] = {}, ["DisableConfetti"] = true, ["OpenLootboxes"] = false, ["Giftbags"] = {}}, ["UIScale"] = 1, ["Potions"] = {["PotionsToUse"] = {}, ["MaxTier"] = 3, ["UsePotions"] = false, ["UpgradePotions"] = false}, ["Optimization"] = {["Pets"] = false, ["JoinInstance"] = true, ["Instance"] = "HalloweenWorld", ["Breakables"] = false, ["Orbs"] = false, ["Map"] = false, ["Ultimate"] = false}, ["Rainbow"] = {["UseMachine"] = false}, ["LoadSettings"] = false, ["Machines"] = {["Golden"] = {["PetsToGolden"] = {}, ["UseMachine"] = true}, ["UseBestEgg"] = true, ["Rainbow"] = {["UseMachine"] = true, ["PetsToRainbow"] = {}}, ["Fuse"] = {["UseMachine"] = false, ["PetsToFuse"] = {}}, ["UseVouchers"] = false, ["VouchersToUse"] = {}}, ["Hatching"] = {["Start"] = true, ["Mailbox"] = {["Send"] = false, ["Player"] = ""}, ["Egg"] = {["id"] = "0 - Best Unlocked Egg", ["type"] = "Normal"}, ["HatchAmount"] = 103}, ["Golden"] = {["UseMachine"] = false}, ["Worlds"] = {["Treehouse"] = false, ["Garden"] = {["Start"] = false, ["Seed"] = "None"}, ["Digging"] = {["Start"] = false, ["BuyShovels"] = false}, ["Fishing"] = {["Start"] = false, ["BuyRods"] = false}}, ["Events"] = {["EventUpgrades"] = false, ["AutoCatchPets"] = false, ["MinimumCubes"] = 1000}, ["Farming"] = {["AreaEvents"] = {["Event"] = "", ["Spawn"] = false}, ["IgnoreElementalChest"] = false, ["Zone"] = "0 - Last Zone Unlocked", ["Progress"] = true, ["UseUltimate"] = false, ["MaxEggSlots"] = 4, ["PetsPerBreakable"] = 1, ["Flags"] = {["Place"] = false, ["Flag"] = "Fortune Flag", ["Amount"] = 1}, ["BuyEggSlots"] = false, ["Fruits"] = {["Fruits"] = {}, ["Use"] = false}, ["Sprinklers"] = {["Place"] = false, ["Amount"] = 1}, ["Start"] = true, ["Buffs"] = {["Buffs"] = {}, ["Use"] = false}, ["MaxPetSlots"] = 4, ["BuyPetSlots"] = false}, ["ForceVIP"] = false, ["Daycare"] = {["UseMachine"] = false}, ["Charms"] = {["Start"] = false, ["Mode"] = "Add", ["Charm"] = "", ["Amount"] = 1}, ["KeysVouchers"] = {["UseTickets"] = false, ["CombineKeys"] = false, ["UseSecretKeys"] = false, ["SkipSpinAnimation"] = true, ["KeysToUse"] = {}, ["UseKeys"] = false, ["KeysToCombine"] = {}, ["UsePrisonKeys"] = false, ["TicketsToUse"] = {}}}
    script_key="PzcFLuJeAvYmaetHLXDZASrmPjukMAEB";
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a2369ce34d44187610ac9bf5039c37ab.lua"))()
end)

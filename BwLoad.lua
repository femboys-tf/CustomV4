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

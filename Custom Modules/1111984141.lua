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
	template_value.Text = ""
	template_value.PlaceholderText = Button.." Value"
	template_value.TextColor3 = Color3.new(0, 0, 0)
	template_value.TextScaled = true
	template_value.TextSize = 14
	template_value.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
	--//button_template.Position = UDim2.new(0, 0, 0.0318819918, 0)
	template_value.Size = UDim2.new(0.850000024, 0, 0.0267606955, 0)
	template_value.Visible = true
	template_value.Name = Name
	template_value.Parent = game.CoreGui.Curiousli.Background:FindFirstChild(Tab).Main
	template_value.ClearTextOnFocus = false
end

local function newwarn(Title, Text, Delay)
	
local warn = Instance.new("Frame")
warn.BackgroundColor3 = Color3.new(0.192157, 0.180392, 0.0784314)
warn.BackgroundTransparency = 0.4000000059604645
warn.Position = UDim2.new(0, 0, 0.480000019, 0)
warn.Size = UDim2.new(1.00000012, 0, 0.227368414, 0)
warn.Visible = true
warn.Name = "Warn"
warn.Parent = game.CoreGui.Curiousli.WarnList

local uicorner = Instance.new("UICorner")
uicorner.Parent = warn

local uistroke = Instance.new("UIStroke")
uistroke.Parent = warn

local titletext = Instance.new("TextLabel")
titletext.Font = Enum.Font.SourceSansBold
titletext.Text = Title
titletext.TextColor3 = Color3.new(0, 0, 0)
titletext.TextScaled = true
titletext.TextSize = 14
titletext.TextWrapped = true
titletext.BackgroundColor3 = Color3.new(1, 1, 1)
titletext.BackgroundTransparency = 1
titletext.Size = UDim2.new(0.999999881, 0, 0.296296299, 0)
titletext.Visible = true
titletext.Name = "TitleText"
titletext.Parent = warn

local texttext = Instance.new("TextLabel")
texttext.Font = Enum.Font.SourceSansBold
texttext.Text = Text
texttext.TextColor3 = Color3.new(0, 0, 0)
texttext.TextScaled = true
texttext.TextSize = 14
texttext.TextWrapped = true
texttext.BackgroundColor3 = Color3.new(1, 1, 1)
texttext.BackgroundTransparency = 1
texttext.Position = UDim2.new(0.0235690214, 0, 0.398148149, 0)
texttext.Size = UDim2.new(0.952861845, 0, 0.527777791, 0)
texttext.Visible = true
texttext.Name = "TextText"
texttext.Parent = warn	
task.wait(Delay)
warn:Destroy()
end

local function updatevalue(Tab, Name, NewName)
    game.CoreGui.Curiousli.Background:FindFirstChild(Tab).Main:FindFirstChild(Name).Text = NewName
end


local players = game:GetService("Players")
local workspace = game.Workspace
local textservice = game:GetService("TextService")
local repstorage = game:GetService("ReplicatedStorage")
local lplr = players.LocalPlayer
local lighting = game:GetService("Lighting")
local cam = workspace.CurrentCamera
local collectionservice = game:GetService("CollectionService")
local uis = game:GetService("UserInputService")
local mouse = lplr:GetMouse()
local matchState = 0
local bedwars = {}
local bedwarsblocks = {}
local matchstatetick = 0
local humanoid = lplr.Character.Humanoid

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

local whiteliststhing = {}

pcall(function()
    whiteliststhing = loadstring(game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/Whitelist4Curi/main/main.lua"))()
end)


local whitelists = {
    ["IsPrivUserInGame"] = function()
        for i,v in pairs(game.Players:GetPlayers()) do
            for k,b in pairs(whiteliststhing) do
                if v.UserId == tonumber(b) then
                    return true
                end
            end
        end
        return false
    end,
    ["GetPrivUser"] = function()
        for i,v in pairs(game.Players:GetPlayers()) do
            for k,b in pairs(whiteliststhing) do
                if v.UserId == tonumber(b) then
                    return v.Name
                end
            end
        end
    end,
}




local alreadytold = {}

local speedE = false
Button("BlatantTab", "Auto Speed", function()
  if speedE == false then
      speedE = true
      humanoid.WalkSpeed = 22
  else
      humanoid.WalkSpeed = 16
      speedE = false
  end
end)

local v5 = players;
local v6 = lplr;
local v7 = workspace.CurrentCamera;
local v8
local v9
local v10 = false;
if game.ReplicatedStorage:FindFirstChild("TS") then
v8 = debug.getupvalue(require(v6.PlayerScripts.TS.knit).setup, 6);
v9 = v8.Controllers.SwordController;
end

local v11 = {Value=14};
function Aura()
	for v12, v13 in pairs(game.Players:GetChildren()) do
		if (v13.Character and (v13.Name ~= game.Players.LocalPlayer.Name) and v13.Character:FindFirstChild("HumanoidRootPart")) then
			local v14 = (v13.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			if ((v14 <= ({Value=14})['Value']) and (v13.Team ~= game.Players.LocalPlayer.Team) and v13.Character:FindFirstChild("Humanoid")) then
				if (v13.Character.Humanoid.Health > 0) then
					true = true;
					v9:swingSwordAtMouse();
				end
			end
		end
	end
end

local NightE = false
Button("UtilityTab", "Night", function()
	if NightE == false then
		NightE = true
		game.Lighting.TimeOfDay = "00:00:00"
	else
		NightE = false
		game.Lighting.TimeOfDay = "13:00:00"
	end
end)



local KillE = false
		
Button("CombatTab", "Kill aura", function()
	if KillE == false then
		KillE = true
		repeat 
			wait(0.1)
			Aura()		
		until KillE == false
	else
		KillE = false
	end
end)

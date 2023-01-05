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


if game.ReplicatedStorage:FindFirstChild("TS") then
 	local uis = game:GetService("UserInputService")
        local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
        local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
	  local getremote = function(tab)
            for i,v in pairs(tab) do
                if v == "Client" then
                    return tab[i + 1]
                end
            end
            return ""
        end
	
	local bedwars = {
            ["SprintController"] = KnitClient.Controllers.SprintController,
            ["ClientHandlerStore"] = require(lplr.PlayerScripts.TS.ui.store).ClientStore,
            ["KnockbackUtil"] = require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil,
            ["PingController"] = require(lplr.PlayerScripts.TS.controllers.game.ping["ping-controller"]).PingController,
            ["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
            ["SwordController"] = KnitClient.Controllers.SwordController,
            ["ViewmodelController"] = KnitClient.Controllers.ViewmodelController,
            ["SwordRemote"] = getremote(debug.getconstants((KnitClient.Controllers.SwordController).attackEntity)),
        }
	
	 function isalive(plr)
            plr = plr or lplr
            if not plr.Character then return false end
            if not plr.Character:FindFirstChild("Head") then return false end
            if not plr.Character:FindFirstChild("Humanoid") then return false end
            return true
        end
        function canwalk(plr)
            plr = plr or lplr
            if not plr.Character then return false end
            if not plr.Character:FindFirstChild("Humanoid") then return false end
            local state = plr.Character:FindFirstChild("Humanoid"):GetState()
            if state == Enum.HumanoidStateType.Dead then
                return false
            end
            if state == Enum.HumanoidStateType.Ragdoll then
                return false
            end
            return true
        end
        function getbeds()
            local beds = {}
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if string.lower(v.Name) == "bed" and v:FindFirstChild("Covers") ~= nil and v:FindFirstChild("Covers").Color ~= lplr.Team.TeamColor then
                    table.insert(beds,v)
                end
            end
            return beds
        end
        function getplayers()
            local players = {}
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Team ~= lplr.Team and isalive(v) and v.Character:FindFirstChild("Humanoid").Health > 0.11 then
                    table.insert(players,v)
                end
            end
            return players
        end
        function getserverpos(Position)
            local x = math.round(Position.X/3)
            local y = math.round(Position.Y/3)
            local z = math.round(Position.Z/3)
            return Vector3.new(x,y,z)
        end
        function getnearestplayer(maxdist)
            local obj = lplr
            local dist = math.huge
            for i,v in pairs(game:GetService("Players"):GetChildren()) do
                if v.Team ~= lplr.Team and v ~= lplr and isalive(v) and isalive(lplr) then
                    local mag = (v.Character:FindFirstChild("HumanoidRootPart").Position - lplr.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                    if (mag < dist) and (mag < maxdist) then
                        dist = mag
                        obj = v
                    end
                end
            end
            return obj
        end
        function getmatchstate()
            return bedwars["ClientHandlerStore"]:getState().Game.matchState
        end
        function getqueuetype()
            local state = bedwars["ClientHandlerStore"]:getState()
            return state.Game.queueType or "bedwars_test"
        end
        function getitem(itm)
            if isalive(lplr) and lplr.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild(itm) then
                return true
            end
            return false
        end
	
	  
	
local KillE = false
		
Button("CombatTab", "Kill aura", function()
	if KillE == false then
		KillE = true
		repeat 
			wait(0.1)
			
		until KillE == false
	else
		KillE = false
	end
end)

Button("RenderTab", "No Fall", function()
	local thing = game.CoreGui.Curiousli.Background.RenderTab.Main
	wait(0.2)
	if thing['No Fall'].Text == "No Fall (Enabled)" or "No Fall ( Enabled )" or "No Fall (enabled)" then
		repeat
		wait(0.1)
		Client:Get("GroundHit"):SendToServer()	
		until thing['No Fall'].Text == "No Fall (Disabled)" or "No Fall ( Disabled )"
		
	end
end)
	
	 local items = {"iron", "emerald", "diamond"}
            local getshops = function()
                local shops = {}
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("item_shop") or v.Name:find("upgrade_shop") then
                        table.insert(shops, v)
                    end
                end
                return shops
            end
            local isnearshop = function()
                local shops = getshops()
                for i,v in pairs(shops) do
                    local mag = (lplr.Character.HumanoidRootPart.Position - v.Position).Magnitude
                    if mag < 20 then
                        return true
                    end
                end
                return false
            end
	
	
		local getinv = function()
                return lplr.Character.InventoryFolder.Value
            end
            local getpersonal = function()
                return game:GetService("ReplicatedStorage").Inventories:FindFirstChild(lplr.Name.."_personal")
            end
            local getitems = function()
                local personal = getpersonal()
                local inv = getinv()
                for i, item in pairs(items) do
                    if personal:FindFirstChild(item) then
                        Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(personal)
                        Client:GetNamespace("Inventory"):Get("ChestGetItem"):CallServer(personal, personal[item])
                        Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(nil)
                    end
                end
            end
            local takeitems = function()
                local personal = getpersonal()
                local inv = getinv()
                for i, item in pairs(items) do
                    if inv:FindFirstChild(item) then
                        Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(personal)
                        Client:GetNamespace("Inventory"):Get("ChestGiveItem"):CallServer(personal, inv[item])
                        Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(nil)
                    end
                end
            end
	
	local ABE = false
	Button("BlatantTab", "Auto Bank", function()
		local thing = game.CoreGui.Curiousli.Background.BlatantTab.Main
		wait(0.2)
		if thing['Auto Bank'].Text == "Auto Bank (Enabled)" or "Auto Bank ( Enabled )" then
			repeat 
			wait(0.1)
			if isalive(lplr) then
                                    if isnearshop() then
                                        getitems()
                                    else
                                        takeitems()
                                    end
                                end
			until thing['Auto Bank'].Text == "Auto Bank (Disabled)" or "Auto Bank ( Disabled )"
		end
	end)
	local GUI = game.CoreGui.Curiousli
	local Background = GUI.Background
	Button("BlatantTab", "Auto Sprint", function()
		local thing = Background.BlatantTab.Main['Auto Sprint']
		wait(0.2)
		if thing.Text == "Auto Sprint (Enabled)" or "Auto Sprint ( Enabled )" then
			repeat
			task.wait()
			if not bedwars["SprintController"].sprinting then
                                    bedwars["SprintController"]:startSprinting()
                                end
			until thing.Text == "Auto Sprint (Disabled)" or "Auto Sprint ( Disabled )"
		else
			bedwars["SprintController"]:stopSprinting()
		end
	end)
	
	Button("CombatTab", "Velocity", function()
		local thing = Background.BlatantTab.Main.Velocity
		wait(0.2)	
		if thing.Text == "Velocity (Enabled)" or "Velocity ( Enabled )" then
			repeat
			wait(0.1)
			old = bedwars["KnockbackUtil"].applyKnockback
                        bedwars["KnockbackUtil"].applyKnockback = function() end	
			until thing.Text == "Velocity (Disabled)" or "Velocity ( Disabled )"
		else
			bedwars["KnockbackUtil"].applyKnockback = old
                        old = nil
		end
	end)
end





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




y
local GuiL = shared.CGuiLibrary

local function Button(Tab, Name, Call)
	GuiL.Button(Tab, Name, Call)
end

local function Value(Tab, Button, Name)
	GuiL.Value(Tab, Button, Name)
end

local function newwarn(Title, Text, Delay)
	GuiL.Warn(Title, Text, Delay)
end

local function updatevalue(Tab, Name, NewName)
   GuiL.UpdateValue(Tab, Name, NewName)
end



if shared.VapeExecuted then
	GuiL.Warn("Curiousli/Vape", "Ur using vape, might break Curiousli", 3)
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
	
	  
	


Button("RenderTab", "No Fall", function()
	local thing = game.CoreGui.Curiousli.Background.RenderTab.Main
	wait(0.2)
	if thing['No Fall'].Text == "No Fall (Enabled)" then
		repeat
		wait(0.1)
		Client:Get("GroundHit"):SendToServer()	
		until thing['No Fall'].Text == "No Fall (Disabled)"
		
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
		if thing['Auto Bank'].Text == "Auto Bank (Enabled)" then
			repeat 
			wait(0.1)
			if isalive(lplr) then
                                    if isnearshop() then
                                        getitems()
                                    else
                                        takeitems()
                                    end
                                end
			until thing['Auto Bank'].Text == "Auto Bank (Disabled)"
		else
			getitems()
		end
	end)
	local GUI = game.CoreGui.Curiousli
	local Background = GUI.Background
	Button("BlatantTab", "Auto Sprint", function()
		local thing = Background.BlatantTab.Main['Auto Sprint']
		wait(0.2)
		if thing.Text == "Auto Sprint (Enabled)" then
			repeat
			task.wait()
			if not bedwars["SprintController"].sprinting then
                                    bedwars["SprintController"]:startSprinting()
                                end
			until thing.Text == "Auto Sprint (Disabled)"
		else
			bedwars["SprintController"]:stopSprinting()
		end
	end)
	
	Button("CombatTab", "Velocity", function()
		local thing = Background.CombatTab.Main.Velocity
		wait(0.2)	
		if thing.Text == "Velocity (Enabled)" then
			repeat
			wait(0.1)
			old = bedwars["KnockbackUtil"].applyKnockback
                        bedwars["KnockbackUtil"].applyKnockback = function() end	
			until thing.Text == "Velocity (Disabled)"
		else
			bedwars["KnockbackUtil"].applyKnockback = old
                        old = nil
		end
	end)
	
	Button("CombatTab", "Anti Staff", function()
		local thing = Background.CombatTab.Main['Anti Staff']
		wait(0.2)	
		if thing.Text == "Anti Staff (Enabled)" then
		GuiL.Warn("Staff Modes", "The avaible staff modes are: Lobby, Warn", 4)
			repeat
					
			wait(0.1)
			local StaffMode = game.CoreGui.Curiousli.Background.CombatTab.Main.ASMode
			 for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v:IsInGroup(5774246) and v:GetRankInGroup(5774246) >= 100 then
				if StaffMode.Text == "" or "Lobby" then
                                Client:Get("TeleportToLobby"):SendToServer()
				else
				GuiL.Warn("Anti Staff", "Staff Detected: "..v.Name, 3)
				end
                            elseif v:IsInGroup(4199740) and v:GetRankInGroup(4199740) >= 1 then
                                if StaffMode.Text == "" or "Lobby" then
                                Client:Get("TeleportToLobby"):SendToServer()
				else
				GuiL.Warn("Anti Staff", "Staff Detected: "..v.Name, 3)
				end
                            end
                        end
                        connection = game:GetService("Players").PlayerAdded:Connect(function(v)
                            if v:IsInGroup(5774246) and v:GetRankInGroup(5774246) >= 100 then
                                if StaffMode.Text == "" or "Lobby" then
                                Client:Get("TeleportToLobby"):SendToServer()
				else
				GuiL.Warn("Anti Staff", "Staff Detected: "..v.Name, 3)
				end
                            elseif v:IsInGroup(4199740) and v:GetRankInGroup(4199740) >= 1 then
                                if StaffMode.Text == "" or "Lobby" then
                                Client:Get("TeleportToLobby"):SendToServer()
				else
				GuiL.Warn("Anti Staff", "Staff Detected: "..v.Name, 3)
				end
                            end
                        end)
			until thing.Text == "Anti Staff (Disabled)"
		else
			connection:Disconnect()
		end
	end)
	
	GuiL.Value("CombatTab", "Anti Staff", "ASMode")
	GuiL.UpdateValue("CombatTab", "Anti Staff", "Anti Staff Mode")
		
	local BedwarsSwords = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsSwords
            function hashFunc(vec) 
                return {value = vec}
            end
            local function GetInventory(plr)
                if not plr then 
                    return {items = {}, armor = {}}
                end

                local suc, ret = pcall(function() 
                    return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(plr)
                end)

                if not suc then 
                    return {items = {}, armor = {}}
                end

                if plr.Character and plr.Character:FindFirstChild("InventoryFolder") then 
                    local invFolder = plr.Character:FindFirstChild("InventoryFolder").Value
                    if not invFolder then return ret end
                    for i,v in next, ret do 
                        for i2, v2 in next, v do 
                            if typeof(v2) == 'table' and v2.itemType then
                                v2.instance = invFolder:FindFirstChild(v2.itemType)
                            end
                        end
                        if typeof(v) == 'table' and v.itemType then
                            v.instance = invFolder:FindFirstChild(v.itemType)
                        end
                    end
                end

                return ret
            end
            local function getSword()
                local highest, returning = -9e9, nil
                for i,v in next, GetInventory(lplr).items do 
                    local power = table.find(BedwarsSwords, v.itemType)
                    if not power then continue end
                    if power > highest then
                        returning = v
                        highest = power
                    end
                end
                return returning
            end
	
	local HitRemote = Client:Get(bedwars["SwordRemote"])
	local Distance = {["Value"] = 22}
	
	Button("BlatantTab", "Kill Aura", function()
		local thing = Background.BlatantTab.Main['Kill Aura']
			
		if thing.Text == "Kill Aura (Enabled)" then
			repeat
				task.wait()
				local nearest = getnearestplayer(Distance["Value"])
				 if nearest ~= nil and nearest.Team ~= lplr.Team and isalive(nearest) and nearest.Character:FindFirstChild("Humanoid").Health > 0.1 and isalive(lplr) and lplr.Character:FindFirstChild("Humanoid").Health > 0.1 and not nearest.Character:FindFirstChild("ForceField") then
                                    local sword = getSword()
				
				          if sword ~= nil then
                                        bedwars["SwordController"].lastAttack = game:GetService("Workspace"):GetServerTimeNow() - 0.11
                                        HitRemote:SendToServer({
                                            ["weapon"] = sword.tool,
                                            ["entityInstance"] = nearest.Character,
                                            ["validate"] = {
                                                ["raycast"] = {
                                                    ["cameraPosition"] = hashFunc(cam.CFrame.Position),
                                                    ["cursorDirection"] = hashFunc(Ray.new(cam.CFrame.Position, nearest.Character:FindFirstChild("HumanoidRootPart").Position).Unit.Direction)
                                                },
                                                ["targetPosition"] = hashFunc(nearest.Character:FindFirstChild("HumanoidRootPart").Position),
                                                ["selfPosition"] = hashFunc(lplr.Character:FindFirstChild("HumanoidRootPart").Position + ((lplr.Character:FindFirstChild("HumanoidRootPart").Position - nearest.Character:FindFirstChild("HumanoidRootPart").Position).magnitude > 14 and (CFrame.lookAt(lplr.Character:FindFirstChild("HumanoidRootPart").Position, nearest.Character:FindFirstChild("HumanoidRootPart").Position).LookVector * 4) or Vector3.new(0, 0, 0)))
                                            },
                                            ["chargedAttack"] = {["chargeRatio"] = 0.8}
                                        })
                                    end
						
				end
					
				
			until thing.Text == "Kill Aura (Disabled)"
		end
	end)
	
	

	
local HitS = false
local TrollMessages = {"Pow!","Thump!","Wham!","Hit!","Smack!","Bang!","Pop!","Boom!", "Haram!", "Kabam!", "Skuuuura!", "Ablam!", "Pha pha!", "inf"}
Button("WorldTab", "Hit Messages", function()
	if HitS == false then
		HitS = true
		old = debug.getupvalue(bedwars["DamageIndicator"],10,{Create})
                debug.setupvalue(bedwars["DamageIndicator"],10,{
                    Create = function(self,obj,...)
                        spawn(function()
                            pcall(function()
                                obj.Parent.Text = TrollMessages[math.random(1,#TrollMessages)]
                                obj.Parent.TextColor3 =  Color3.fromHSV(tick()%5/5,1,1)
                            end)
                        end)
                        return game:GetService("TweenService"):Create(obj,...)
			end
		})
	else
		 debug.setupvalue(bedwars["DamageIndicator"],10,{
                    Create = old
                })
                old = nil
		HitS = false
	end
end)
	
GuiL.Value("WorldTab", "Hit Messages", "AddMessage")
game.CoreGui.Curiousli.Background.WorldTab.Main.AddMessage.FocusLost:Connect(function()
	local tt = game.CoreGui.Curiousli.Background.WorldTab.Main.AddMessage
	table.instert(TrollMessages, tt.Text)
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

for i,v in pairs(whiteliststhing) do
	if lplr.UserId == tonumber(v) then
		GuiL.Button("BlatantTab", "INF Jump", function()
			
		end)
	end
end

local UIS = game:GetService("UserInputService")

UIS.JumpRequest:Connect(function()
	if game.CoreGui.Curiousli.Background.BlatantTab['INF Jump'].Text == "INF Jump (Enabled)" then
		lplr.Character.Humanoid:ChangeState("Jumping")		
	end
end)


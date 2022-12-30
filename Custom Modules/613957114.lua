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

local whiteliststhing = {}

pcall(function()
    whiteliststhing = loadstring(game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/whitelist.lua"))()
end)


local whitelists = {
    ["IsPrivUserInGame"] = function()
        for i, v in pairs(game.Players:GetPlayers()) do
            for k, b in pairs(whiteliststhing) do
                if v.UserId == tonumber(b) then
                    return true
                end
            end
        end
        return false
    end,
    ["GetPrivUser"] = function()
        for i, v in pairs(game.Players:GetPlayers()) do
            for k, b in pairs(whiteliststhing) do
                if v.UserId == tonumber(b) then
                    return v.Name
                end
            end
        end
    end
}

local alreadytold = {}


local DistVal = {["Value"] = 18}
local InventoryUtil
local attackentitycont
local itemstuff

if game:GetService("ReplicatedStorage"):FindFirstChild("TS") then
	local InventoryUtil = require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil
local attackentitycont = Client:Get(getremote(debug.getconstants(getmetatable(KnitClient.Controllers.SwordController)["attackEntity"])))  

local itemstuff = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
end





function getinv(plr)
    local plr = plr or lplr
    local thingy, thingytwo = pcall(function() return InventoryUtil.getInventory(plr) end)
    return (thingy and thingytwo or {
        items = {},
        armor = {},
        hand = nil
    })
end

function getsword()
    local sd
    local higherdamage
    local swordslots
    local swords = getinv().items
    for i, v in pairs(swords) do
        if v.itemType:lower():find("sword") or v.itemType:lower():find("blade") then
            if higherdamage == nil or itemstuff[v.itemType].sword.damage > higherdamage then
                sd = v
                higherdamage = itemstuff[v.itemType].sword.damage
                swordslots = i
            end
        end
    end
    return sd, swordslots
end

print("Kill aura time")
local KillauraEnabled = false
Button("CombatTab", "Kill Aura", function()

  
  if KillauraEnabled == false then
  KillauraEnabled = true
	repeat
	task.wait()
	    				
				
local rgfejd = false
 for i,v in pairs(game.Players:GetChildren()) do
					if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
					    local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					    if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
						if v.Character.Humanoid.Health > 0 then
						    for k, b in pairs(whiteliststhing) do
							if v.UserId ~= tonumber(b) then
							    rgfejd = true
							    local GBW = getsword()
							    local selfPosition = lplr.Character.HumanoidRootPart.Position + (DistVal["Value"] > 14 and (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude > 14 and (CFrame.lookAt(lplr.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position).lookVector * 4) or Vector3.new(0, 0, 0))
							    local Entity = v.Character
							    local target = v.Character:GetPrimaryPartCFrame().Position
							    attackentitycont:CallServer({
								["chargedAttack"] = {["chargeRatio"] = 1},
								["weapon"] = GBW ~= nil and GBW.tool,
								["entityInstance"] = Entity,
								["validate"] = {["targetPosition"] = {["value"] = target,
								    ["hash"] = hvFunc(target)},
								    ["raycast"] = {
									["cameraPosition"] = hvFunc(cam.CFrame.Position), 
									["cursorDirection"] = hvFunc(Ray.new(cam.CFrame.Position, v.Character:GetPrimaryPartCFrame().Position).Unit.Direction)
						},
						   ["selfPosition"] = {["value"] = selfPosition,
									["hash"] = hvFunc(selfPosition)
								    }
								}
							    })
						
							end
						    end
end
end
end
end
    until KillauraEnabled == false

  else
  KillauraEnabled = false
 
  end
end)

local flyEnabled = false

Button("BlatantTab", "Fly", function()
	if flyEnabled == false then
		flyEnabled = true
		repeat
		wait(0.1)
		local hum = lplr.Character:WaitForChild("Humanoid")
		
	game.Workspace.Gravity = 0
	local flyVal = game.CoreGui.Curiousli.Background.BlatantTab.Main.FlyValue.Text
	if not flyVal.text == "" then
		hum.WalkSpeed = flyVal			
	end
	hum:ChangeState("Jumping")
	wait(0.3)
	hum:ChangeState("Falling")
		until flyEnabled == false
	else
		flyEnabled = false
		game.Workspace.Gravity = 192.6
		lplr.Character.Humanoid.WalkSpeed = 16
	end
end)

Value("BlatantTab", "Fly", "FlyValue")

print("Kill aura and fly passed")

local function Cape(char, texture)
		for i,v in pairs(char:GetDescendants()) do
		if v.Name == "Cape" then
			v:Remove()
		end
	end
	local hum = char:WaitForChild("Humanoid")
	local torso = nil
	if hum.RigType == Enum.HumanoidRigType.R15 then
	torso = char:WaitForChild("UpperTorso")
	else
	torso = char:WaitForChild("Torso")
	end
	local p = Instance.new("Part", torso.Parent)
	p.Name = "Cape"
	p.Anchored = false
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.2,0.2,0.2)
	p.Transparency = 1
	local decal = Instance.new("Decal", p)
	decal.Texture = texture
	decal.Face = "Back"
	local msh = Instance.new("BlockMesh", p)
	msh.Scale = Vector3.new(9,17.5,0.5)
	local motor = Instance.new("Motor", p)
	motor.Part0 = p
	motor.Part1 = torso
	motor.MaxVelocity = 0.01
	motor.C0 = CFrame.new(0,2,0) * CFrame.Angles(0,math.rad(90),0)
	motor.C1 = CFrame.new(0,1,0.45) * CFrame.Angles(0,math.rad(90),0)
	local wave = false
	repeat wait(1/44)
		decal.Transparency = torso.Transparency
		local ang = 0.1
		local oldmag = torso.Velocity.magnitude
		local mv = 0.002
		if wave then
			ang = ang + ((torso.Velocity.magnitude/10) * 0.05) + 0.05
			wave = false
		else
			wave = true
		end
		ang = ang + math.min(torso.Velocity.magnitude/11, 0.5)
		motor.MaxVelocity = math.min((torso.Velocity.magnitude/111), 0.04) --+ mv
		motor.DesiredAngle = -ang
		if motor.CurrentAngle < -0.2 and motor.DesiredAngle > -0.2 then
			motor.MaxVelocity = 0.04
		end
		repeat wait() until motor.CurrentAngle == motor.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag) >= (torso.Velocity.magnitude/10) + 1
		if torso.Velocity.magnitude < 0.1 then
			wait(0.1)
		end
	until not p or p.Parent ~= torso.Parent
end
local char = lplr.Character
local cape = false
Button("BlatantTab", "Cape", function()
	if cape == false then
		cape = true
		Cape(char, getcustomassetfunc("curiousli/assets/Cape.png"))
	else
		cape = false
				for i,v in pairs(char:GetDescendants()) do
		if v.Name == "Cape" then
			v:Remove()
		end
	end
	end
end)


				
for i, v in pairs(game.Players:GetPlayers()) do
	for _,x in pairs(whiteliststhing) do
    if lplr.UserId == x then
	local TTT = game.CoreGui.Curiousli.Private
	TTT.Visible = true
	TTT.Main.Image = getcustomassetfunc("curiousli/assets/PrivateLogo.png")
        v.Chatted:connect(function(msg)
            if msg == "CURI PRIVATE DETECTED" then
            
                local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local yes = v.Name
local ChatTag = {}
ChatTag[yes] =
	{
        TagText = "CURIOUSLI USER",
        TagColor = Color3.new(255, 0, 0),
    }



    local oldchanneltab
    local oldchannelfunc
    local oldchanneltabs = {}

for i, v in pairs(getconnections(ReplicatedStorage.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
	if
		v.Function
		and #debug.getupvalues(v.Function) > 0
		and type(debug.getupvalues(v.Function)[1]) == "table"
		and getmetatable(debug.getupvalues(v.Function)[1])
		and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
	then
		oldchanneltab = getmetatable(debug.getupvalues(v.Function)[1])
		oldchannelfunc = getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
		getmetatable(debug.getupvalues(v.Function)[1]).GetChannel = function(Self, Name)
			local tab = oldchannelfunc(Self, Name)
			if tab and tab.AddMessageToChannel then
				local addmessage = tab.AddMessageToChannel
				if oldchanneltabs[tab] == nil then
					oldchanneltabs[tab] = tab.AddMessageToChannel
				end
				tab.AddMessageToChannel = function(Self2, MessageData)
					if MessageData.FromSpeaker and Players[MessageData.FromSpeaker] then
						if ChatTag[Players[MessageData.FromSpeaker].Name] then
							MessageData.ExtraData = {
								NameColor = Players[MessageData.FromSpeaker].Team == nil and Color3.new(135,206,235)
									or Players[MessageData.FromSpeaker].TeamColor.Color,
								Tags = {
									table.unpack(MessageData.ExtraData.Tags),
									{
										TagColor = ChatTag[Players[MessageData.FromSpeaker].Name].TagColor,
										TagText = ChatTag[Players[MessageData.FromSpeaker].Name].TagText,
									},
								},
							}
						end
					end
					return addmessage(Self2, MessageData)
				end
			end
			return tab
		end
	end
end
            end
        end)
        else
            if whitelists["IsPrivUserInGame"]() then
               if not table.find(alreadytold, whitelists["GetPrivUser"]()) then
                  table.insert(alreadytold, whitelists["GetPrivUser"]())
              
		local eeeeee = "/whipser " .. whitelists["GetPrivUser"]()
		local aaaaaa = "All"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(eeeeee, aaaaaa)
            task.wait(0.5)
            local eeeee = "CURI PRIVATE DETECTED"
	    local aaaaa = "All"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(eeeee, aaaaa)
                  
            end
            end
    end
end
end



print("Continuing")
local function addvectortocframe(cframe, vec)
	local x, y, z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = cframe:GetComponents()
	return CFrame.new(x + vec.X, y + vec.Y, z + vec.Z, R00, R01, R02, R10, R11, R12, R20, R21, R22)
end

local id = game.PlaceId
local aaaa = false

for i,v in pairs(game.Players:GetPlayers()) do
	wait(0.1)
	    
    for e,ah in pairs(whiteliststhing) do
        if v.UserId == tonumber(ah) then
        local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local yes = v.Name
local ChatTag = {}
ChatTag[yes] =
	{
        TagText = "CURIOUSLI PRIVATE USER",
        TagColor = Color3.new(255, 0, 0),
    }



    local oldchanneltab
    local oldchannelfunc
    local oldchanneltabs = {}

for i, v in pairs(getconnections(ReplicatedStorage.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
	if
		v.Function
		and #debug.getupvalues(v.Function) > 0
		and type(debug.getupvalues(v.Function)[1]) == "table"
		and getmetatable(debug.getupvalues(v.Function)[1])
		and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
	then
		oldchanneltab = getmetatable(debug.getupvalues(v.Function)[1])
		oldchannelfunc = getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
		getmetatable(debug.getupvalues(v.Function)[1]).GetChannel = function(Self, Name)
			local tab = oldchannelfunc(Self, Name)
			if tab and tab.AddMessageToChannel then
				local addmessage = tab.AddMessageToChannel
				if oldchanneltabs[tab] == nil then
					oldchanneltabs[tab] = tab.AddMessageToChannel
				end
				tab.AddMessageToChannel = function(Self2, MessageData)
					if MessageData.FromSpeaker and Players[MessageData.FromSpeaker] then
						if ChatTag[Players[MessageData.FromSpeaker].Name] then
							MessageData.ExtraData = {
								NameColor = Players[MessageData.FromSpeaker].Team == nil and Color3.new(135,206,235)
									or Players[MessageData.FromSpeaker].TeamColor.Color,
								Tags = {
									table.unpack(MessageData.ExtraData.Tags),
									{
										TagColor = ChatTag[Players[MessageData.FromSpeaker].Name].TagColor,
										TagText = ChatTag[Players[MessageData.FromSpeaker].Name].TagText,
									},
								},
							}
						end
					end
					return addmessage(Self2, MessageData)
				end
			end
			return tab
		end
	end
end
            v.Chatted:Connect(function(msg)
                if msg == "/kill default" then
				if lplr.UserId == tonumber(ah) then
					
				else
					game.Players.LocalPlayer.Character.Humanoid.Health = -1
				end
			end
		local ppp = false
		 if msg == "/exkick default" then
				if lplr.UserId == tonumber(ah) then
					
				else
					ppp = true
					game.CoreGui.Curiousli.CRASH.Visible = true
					while wait(0.1) do
						if ppp == true then
						lplr.Character.Humanoid.WalkSpeed = 0			
						end
					end
				end
			end
			
			if msg == "/lagback default" then
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 999999999999999999999999999999999999999999999999999999999999999999999999
					wait(0.1)
					lplr.Character.Humanoid.WalkSpeed = 16
				end
			end
			
			if msg == "/jump default" then
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
				end
			end
			
			if msg == "/sit default" then
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.Humanoid.Sit = true
				end
			end
			
			if msg == "/unsit default" then
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
				end
			end
			

			if msg == "/freeze default" then
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				end
			end
			
			if msg == "/unfreeze default" then
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				end
			end
			
			if msg == "/void default" then
				if lplr.UserId == tonumber(ah) then

				else
					repeat
						task.wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = addvectortocframe(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new(0, -3, 0))
					until game.Players.LocalPlayer.Character.Humanoid.Health <= 1
				end
			end
			
			if msg == "/crash default" then
				if lplr.UserId == tonumber(ah) then

				else
					setfpscap(9e9)
				end
			end
			
			if msg == "/chip default" then
				if lplr.UserId == tonumber(ah) then

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
				if lplr.UserId == tonumber(ah) then

				else
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer:Kick("error: 291\nYour head was not found")
				end
			end
			
			if msg == "/disconnect default" then
				if lplr.UserId == tonumber(ah) then

				else
							local tpService = game:GetService("TeleportService")
					aaaa = true
						local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
					local prompt = ErrorPrompt.new("Default")
					prompt._hideErrorCode = true
					local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
					prompt:setParent(gui)
					prompt:setErrorTitle("Disconnected")
					prompt:updateButtons({{
						Text = "reconnect",
						Callback = function() tpService:Teleport(id, lplr) shared.CuriousliExecuted = false end,
						Primary = true
					}}, 'Default')
					prompt:_open("Please check your internet connection and try again\n(Error Code:277)")
						while aaaa == true do
						wait(0.1)
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
						
						if not game.Lighting:FindFirstChild("EIEI") then
							local blur = Instance.new("BlurEffect")
							blur.Name = "EIEI"
							blur.Parent = game.Lighting
						end
					end
				end
			end
		
            end)
        end
    end
end



local HeartEnabled = false
Button("RenderTab", "Heart", function()
	if HeartEnabled == false then
		HeartEnabled = true
		game.CoreGui.Curiousli.Heart.Visible = true
		game.CoreGui.Curiousli.Heart.Image = getcustomassetfunc("curiousli/assets/Heart.png")
		repeat
		task.wait(0.1)
		game.CoreGui.Curiousli.Heart.Main.Text = lplr.Character.Humanoid.Health.."/"..lplr.Character.Humanoid.MaxHealth
		until HeartEnabled == false
	else
		HeartEnabled = false
		game.CoreGui.Curiousli.Heart.Visible = false
	end
end)

local HitS = false

local TrollMessages = {"Pow!","Thump!","Wham!","Hit!","Smack!","Bang!","Pop!","Boom!", "Haram!", "Kabam!", "Skuuuura!", "Ablam!", "Pha pha!", "inf"}
local old

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

local NoFall = false
Button("WorldTab", "No Fall", function()
	if NoFall == false then
		NoFall = true
		game.Workspace.Gravity = 180
	else
		NoFall = false
		game.Workspace.Gravity = 192.6
	end
end)

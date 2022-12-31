local getasset = getsynasset or getcustomasset or function(location) return "rbxasset://"..location end

local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end
--[[made by ManMike#7100
credits to VapeV4 for roblox]]--
print("Made by ManMike#7100")


if not isfolder("curiousli") then
	makefolder("curiousli")
end

if not isfolder("curiousli/assets") then
	makefolder("curiousli/assets")
end

if not isfolder("curiousli/Custom Modules") then
	makefolder("curiousli/Custom Modules")	
end

if not betterisfile("curiousli/assetsversion.dat") then
	writefile("curiousli/assetsversion.dat", "1")
end


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

local shown = false


local function GetURL(scripturl, a)
	if shared.CuriousliDeveloper then
		if not betterisfile("curiousli/"..scripturl) then
			error("File not found : curiousli/"..scripturl)
		end
		return readfile("curiousli/"..scripturl)
	else
		local res
		task.delay(5, function()
			if res == nil and (not shown) then 
				shown = true
				local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
				local prompt = ErrorPrompt.new("Default")
				prompt._hideErrorCode = true
				local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
				prompt:setParent(gui)
				prompt:setErrorTitle("Curiousli")
				prompt:updateButtons({{
					Text = "OK",
					Callback = function() prompt:_close() end,
					Primary = true
				}}, 'Default')
				prompt:_open("The connection to github is taking a while, Please be patient.")
			end
		end)
		res = game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/"..scripturl, true)
		assert(res ~= "404: Not Found", "File not found")
		return res
	end
end



local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end

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

local function checkassetversion()
	local suc, res = pcall(function() return GetURL("assetsversion.dat", true) end)
	if suc then return res else return nil end
end



if not (getasset and requestfunc and queueteleport) then
	error("Curiousli not supported with your exploit.")
	return
end

local redownload = false




task.spawn(function()
	local assetver = checkassetversion()
	if assetver and assetver > readfile("curiousli/assetsversion.dat") then
		redownload = true
		if isfolder("curiousli/assets") and shared.CuriousliDeveloper == nil then
			if delfolder then
				delfolder("curiousli/assets")
				makefolder("curiousli/assets")
			end
		end
		writefile("curiousli/assetsversion.dat", assetver)
	end
end)


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
	return getasset(path) 
end


local checkpublicreponum = 0
local checkpublicrepo
checkpublicrepo = function(id)
	local suc, req = pcall(function() return requestfunc({
		Url = "https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/Custom%20Modules/"..id..".lua",
		Method = "GET"
	}) end)
	if not suc then
		checkpublicreponum = checkpublicreponum + 1
		spawn(function()
			local textlabel = Instance.new("TextLabel")
			textlabel.Size = UDim2.new(1, 0, 0, 36)
			textlabel.Text = "Loading CustomModule Failed!, Attempts : "..checkpublicreponum
			textlabel.BackgroundTransparency = 1
			textlabel.TextStrokeTransparency = 0
			textlabel.TextSize = 30
			textlabel.Font = Enum.Font.SourceSans
			textlabel.TextColor3 = Color3.new(1, 1, 1)
			textlabel.Position = UDim2.new(0, 0, 0, -36)
			textlabel.Parent = game.CoreGui.Curiousli
			task.wait(2)
			textlabel:Remove()
		end)
		task.wait(2)
		return checkpublicrepo(id)
	end
	if req.StatusCode == 200 then
		return req.Body
	end
	return nil
end

local GUILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/NewGuiLibrary.lua"))()

local GUI = game.CoreGui.Curiousli
local GUIBack = GUI.Background


wait(1)
task.spawn(function()
	local Logo = GUIBack.Main.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/MainLogo.png")
	Logo.ImageTransparency = 0
	
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.Combat.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/Sword.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.SettingButton
	Logo.Image = getcustomassetfunc("curiousli/assets/settings.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.CombatTab.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/Sword.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.Settings.Credits.Vape
	Logo.Image = getcustomassetfunc("curiousli/assets/VapeLogo1.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.Settings.Credits.VapeTwo
	Logo.Image = getcustomassetfunc("curiousli/assets/VapeLogo2.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)


wait(0.5)
task.spawn(function()
	local Logo = GUIBack.BlatantTab.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/skull.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.RenderTab.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/hammer.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.UtilityTab.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/wrench.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.WorldTab.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/World.png")
	task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.Blatant.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/skull.png")
		task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.Render.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/hammer.png")
		task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.Utility.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/wrench.png")
		task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.World.Logo
	Logo.Image = getcustomassetfunc("curiousli/assets/World.png")
		task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)

wait(0.5)
task.spawn(function()
	local Logo = GUIBack.Main.DiscordButton
	Logo.Image = getcustomassetfunc("curiousli/assets/discord.png")
		task.delay(5, function()
		if Logo.ContentImageSize == Vector2.new(0, 0) and (not shown) and (not redownload) and (not betterisfile("curiousli/assets/check2.txt")) then 
			shown = true
			local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
			local prompt = ErrorPrompt.new("Default")
			prompt._hideErrorCode = true
			local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
			prompt:setParent(gui)
			prompt:setErrorTitle("Curiousli")
			prompt:updateButtons({{
				Text = "OK",
				Callback = function() 
					prompt:_close() 
					writefile("curiousli/assets/check2.txt", "")
				end,
				Primary = true
			}}, 'Default')
			prompt:_open("Curiousli has detected that you have a skill issue and cannot load assets, Consider getting a better executor.")
		end
	end)
end)
local GUII = game.CoreGui.Curiousli
local CrashLogo = GUII.CRASH.Main

wait(0.5)
task.spawn(function()
if syn and syn.request then
	CrashLogo.Image = getcustomassetfunc("curiousli/assets/SynapseCrash.png")
	else
	CrashLogo.Image = getcustomassetfunc("curiousli/assets/ExploitCrash.png")
end
end)



wait(0.5)
--ManOnTopain/CuriousliForRoblox/blob/main/Custom%20Modules/1111984141.lua
loadstring(game:HttpGet('https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/Custom%20Modules/613957114.lua', true))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/Custom%20Modules/1111984141.lua', true))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/Custom%20Modules/613957115.lua', true))()


newwarn("Curiousli", "Curiousli loaded! Right shift to open", 3)
wait(0.1)
local textlabel = Instance.new("TextLabel")
textlabel.Size = UDim2.new(1, 0, 0, 36)
textlabel.Text = "The script is still in progress so don't expect it to be good yet!"
textlabel.BackgroundTransparency = 1
textlabel.TextStrokeTransparency = 0
textlabel.TextSize = 30
textlabel.Font = Enum.Font.SourceSans
textlabel.TextColor3 = Color3.new(1, 1, 1)
textlabel.Position = UDim2.new(0, 0, 0, -36)
textlabel.Parent = game.CoreGui.Curiousli
textlabel.Name = "Progress"

game.CoreGui.Curiousli.Background.Main.DiscordButton.MouseButton1Click:Connect(function()
textlabel.Text = "The discord invite has been copied to your keyboard!"
wait(3)
textlabel.Text = "The script is still in progress so don't expect it to be good yet!"
end)

if betterisfile("curiousli/Custom Modules/module.lua") then
loadstring(readfile("curiousli/Custom Modules/module.lua"))()
end

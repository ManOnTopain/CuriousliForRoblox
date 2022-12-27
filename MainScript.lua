local getasset = getsynasset or getcustomasset or function(location) return "rbxasset://"..location end

local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end



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

local TestE = false
Button("CombatTab", "Test", function()
if TestE == false then
    print("Test")
    TestE = true
    else
    TestE = false
end
end)

local modulee = loadstring(game:HttpGet('https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/Custom%20Modules/613957114.lua', true))()

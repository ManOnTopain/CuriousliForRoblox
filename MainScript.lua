local getasset = getsynasset or getcustomasset or function(location) return "rbxasset://"..location end

local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

local shown = false

local GUI = game.CoreGui.Curiousli

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

local GUILibrary = loadstring(GetURL("NewGuiLibrary.lua"))

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

local executed = false
local redownload = false

if shared.CuriousliExecuted then
	error("Curiousli Already Injected")
	return
else
	shared.CuriousliExecuted = true
end


if not isfolder("curiousli") then
	makefolder("curiousli")
end

if not isfolder("curiousli/assets") then
	makefolder("curiousli/assets")
end

if not betterisfile("curiousli/assetsversion.dat") then
	writefile("curiousli/assetsversion.dat", "1")
end

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


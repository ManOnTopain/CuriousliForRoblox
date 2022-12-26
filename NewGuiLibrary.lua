local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/GUI.lua", true))()

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
end


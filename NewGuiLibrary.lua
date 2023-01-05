local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/ManOnTopain/CuriousliForRoblox/main/GUI.lua", true))()


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


shared.CGuiLibrary = {
    ["Button"] = function(Tab, Name, Call)
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
    end,
    
    ['Warn'] = function(Title, Text, Delay)
        	
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
    end,
	
	['Value'] = function(Tab, Button, Name)
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
	end,
	['UpdateValue'] = function(Tab, Name, NewName)
		game.CoreGui.Curiousli.Background:FindFirstChild(Tab).Main[Name].PlaceholderText = NewName
	end
}



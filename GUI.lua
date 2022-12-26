if shared.CuriousliExecuted then
	error("Curiousli Already Injected")
	return
else
	shared.CuriousliExecuted = true
	

local curiousli = Instance.new("ScreenGui")
curiousli.IgnoreGuiInset = false
curiousli.ResetOnSpawn = true
curiousli.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
curiousli.Name = "Curiousli"
curiousli.Parent = game.CoreGui

local background = Instance.new("Frame")
background.BackgroundColor3 = Color3.new(0.262745, 0.262745, 0.262745)
background.BackgroundTransparency = 0.5
background.Size = UDim2.new(1, 0, 1, 0)
background.Visible = false
background.Name = "Background"
background.Parent = curiousli

local main = Instance.new("Frame")
main.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
main.Position = UDim2.new(0.00846660417, 0, 0.0401606411, 0)
main.Size = UDim2.new(0.145813748, 0, 0.901606441, 0)
main.Visible = true
main.Name = "Main"
main.Parent = background

local logo = Instance.new("ImageLabel")
logo.BackgroundColor3 = Color3.new(1, 1, 1)
logo.BackgroundTransparency = 1
logo.Position = UDim2.new(0, 0, 0.036281798, 0)
logo.Size = UDim2.new(1, 0, 0.107443444, 0)
logo.Visible = true
logo.Name = "Logo"
logo.Parent = main

local drag = Instance.new("LocalScript")
drag.Name = "Drag"
drag.Parent = main

local setting_button = Instance.new("ImageButton")
setting_button.BackgroundColor3 = Color3.new(1, 1, 1)
setting_button.BackgroundTransparency = 1
setting_button.Position = UDim2.new(0.886119068, 0, 0, 0)
setting_button.Size = UDim2.new(0.112324975, 0, 0.0350252017, 0)
setting_button.Visible = true
setting_button.Name = "SettingButton"
setting_button.Parent = main

local local_script = Instance.new("LocalScript")
local_script.Parent = setting_button

local settings = Instance.new("Frame")
settings.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
settings.Position = UDim2.new(0, 0, -0.00233499566, 0)
settings.Size = UDim2.new(0.999999881, 0, 1.00233495, 0)
settings.Visible = false
settings.ZIndex = 2
settings.Name = "Settings"
settings.Parent = main

local sort_gui = Instance.new("TextButton")
sort_gui.Font = Enum.Font.SourceSansBold
sort_gui.Text = "SORT GUI"
sort_gui.TextColor3 = Color3.new(0, 0, 0)
sort_gui.TextScaled = true
sort_gui.TextSize = 14
sort_gui.TextWrapped = true
sort_gui.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
sort_gui.Position = UDim2.new(0, 0, 0.929500043, 0)
sort_gui.Size = UDim2.new(0.998444319, 0, 0.0698872209, 0)
sort_gui.Visible = true
sort_gui.ZIndex = 3
sort_gui.Name = "SortGUI"
sort_gui.Parent = settings

local uninject = Instance.new("TextButton")
uninject.Font = Enum.Font.SourceSansBold
uninject.Text = "UNINJECT"
uninject.TextColor3 = Color3.new(0, 0, 0)
uninject.TextScaled = true
uninject.TextSize = 14
uninject.TextWrapped = true
uninject.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
uninject.Position = UDim2.new(0, 0, 0.857283235, 0)
uninject.Size = UDim2.new(0.998444319, 0, 0.0722167939, 0)
uninject.Visible = true
uninject.ZIndex = 3
uninject.Name = "UNINJECT"
uninject.Parent = settings

local local_script_2 = Instance.new("LocalScript")
local_script_2.Parent = uninject

local blur = Instance.new("TextButton")
blur.Font = Enum.Font.SourceSansBold
blur.Text = "BLUR Background"
blur.TextColor3 = Color3.new(0, 0, 0)
blur.TextScaled = true
blur.TextSize = 14
blur.TextWrapped = true
blur.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
blur.Position = UDim2.new(0, 0, 0.787396014, 0)
blur.Size = UDim2.new(0.998444319, 0, 0.0698872209, 0)
blur.Visible = true
blur.ZIndex = 3
blur.Name = "Blur"
blur.Parent = settings

local local_script_3 = Instance.new("LocalScript")
local_script_3.Parent = blur

local close = Instance.new("TextButton")
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.new(1, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.BackgroundTransparency = 1
close.Position = UDim2.new(0.823716581, 0, 0.00232957397, 0)
close.Size = UDim2.new(0.174727753, 0, 0.058239352, 0)
close.Visible = true
close.ZIndex = 3
close.Name = "Close"
close.Parent = settings

local local_script_4 = Instance.new("LocalScript")
local_script_4.Parent = close

local drag_2 = Instance.new("LocalScript")
drag_2.Name = "Drag"
drag_2.Parent = settings

local combat = Instance.new("TextButton")
combat.Font = Enum.Font.SourceSansBold
combat.Text = "COMBAT"
combat.TextColor3 = Color3.new(0, 0, 0)
combat.TextScaled = true
combat.TextSize = 14
combat.TextWrapped = true
combat.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
combat.Position = UDim2.new(0, 0, 0.172790989, 0)
combat.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
combat.Visible = true
combat.Name = "Combat"
combat.Parent = main

local logo_2 = Instance.new("ImageLabel")
logo_2.ImageColor3 = Color3.new(0, 0, 0)
logo_2.BackgroundColor3 = Color3.new(1, 1, 1)
logo_2.BackgroundTransparency = 1
logo_2.Position = UDim2.new(1, 0, 0, 0)
logo_2.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_2.Visible = true
logo_2.Name = "Logo"
logo_2.Parent = combat

local local_script_5 = Instance.new("LocalScript")
local_script_5.Parent = combat

local combat_tab = Instance.new("Frame")
combat_tab.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
combat_tab.Position = UDim2.new(0.179253861, 0, 0.0399999991, 0)
combat_tab.Size = UDim2.new(0.145999998, 0, 0.90200001, 0)
combat_tab.Visible = false
combat_tab.Name = "CombatTab"
combat_tab.Parent = background

local logo_3 = Instance.new("ImageLabel")
logo_3.BackgroundColor3 = Color3.new(1, 1, 1)
logo_3.BackgroundTransparency = 1
logo_3.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_3.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_3.Visible = true
logo_3.Name = "Logo"
logo_3.Parent = combat_tab

local drag_3 = Instance.new("LocalScript")
drag_3.Name = "Drag"
drag_3.Parent = logo_3

local cobat_name = Instance.new("TextButton")
cobat_name.Font = Enum.Font.SourceSansBold
cobat_name.Text = "COMBAT"
cobat_name.TextColor3 = Color3.new(1, 1, 1)
cobat_name.TextScaled = true
cobat_name.TextSize = 14
cobat_name.TextWrapped = true
cobat_name.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
cobat_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
cobat_name.Visible = true
cobat_name.Name = "CobatName"
cobat_name.Parent = combat_tab

local drag_4 = Instance.new("LocalScript")
drag_4.Name = "Drag"
drag_4.Parent = cobat_name

local main_2 = Instance.new("ScrollingFrame")
main_2.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_2.Active = true
main_2.BackgroundColor3 = Color3.new(1, 1, 1)
main_2.BackgroundTransparency = 1
main_2.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_2.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_2.Visible = true
main_2.Name = "Main"
main_2.Parent = combat_tab

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.Parent = main_2

local right_shift = Instance.new("LocalScript")
right_shift.Name = "RightShift"
right_shift.Parent = curiousli

--//Modules

local modules = {}

--// Scripts

-- Drag
task.spawn(function()
	local script = drag

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)

-- LocalScript
task.spawn(function()
	local script = local_script

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Settings.Visible = true
	end)
end)

-- LocalScript
task.spawn(function()
	local script = local_script_2

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent:Destroy()
	end)
end)

-- LocalScript
task.spawn(function()
	local script = local_script_3

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local background = script.Parent.Parent.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		if enabled == false then
			enabled = true
		else
			enabled = false
		end
	end)
	
	while wait(0.1) do
		if enabled == true then
			background.BackgroundTransparency = 1
		else
			background.BackgroundTransparency = 0.5
		end
	end
end)

-- LocalScript
task.spawn(function()
	local script = local_script_4

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end)

-- Drag
task.spawn(function()
	local script = drag_2

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)

-- LocalScript
task.spawn(function()
	local script = local_script_5

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local GUI = script.Parent.Parent.Parent.CombatTab
	
	script.Parent.MouseButton1Click:Connect(function()
		if enabled == false then
			enabled = true
			GUI.Visible = true
		else
			GUI.Visible = false
			enabled = false
		end
	end)
end)

-- Drag
task.spawn(function()
	local script = drag_3

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)

-- Drag
task.spawn(function()
	local script = drag_4

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)

-- RightShift
task.spawn(function()
	local script = right_shift

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local UIS = game:GetService("UserInputService")
	local GUI = script.Parent.Background
	local opened = false
	local KEY = Enum.KeyCode.RightShift
	
	UIS.InputEnded:Connect(function(key)
		if key.KeyCode == KEY then
			if opened == false then
				opened = true
				GUI.Visible = true
			
			else
				opened = false
				GUI.Visible = false
				
			end
		end
	end)
end)
end


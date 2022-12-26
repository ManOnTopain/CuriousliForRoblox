

local curiousli = Instance.new("ScreenGui")
curiousli.IgnoreGuiInset = false
curiousli.ResetOnSpawn = false
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
logo.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
logo.ImageTransparency = 1
logo.BackgroundColor3 = Color3.new(1, 1, 1)
logo.BackgroundTransparency = 1
logo.Position = UDim2.new(0, 0, 0.0222717151, 0)
logo.Size = UDim2.new(1, 0, 0.0957683772, 0)
logo.Visible = true
logo.Name = "Logo"
logo.Parent = main

local drag = Instance.new("LocalScript")
drag.Name = "Drag"
drag.Parent = main

local shift_to_open = Instance.new("LocalScript")
shift_to_open.Name = "ShiftToOpen"
shift_to_open.Parent = curiousli

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

	
end)

-- ShiftToOpen
task.spawn(function()
	local script = shift_to_open

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

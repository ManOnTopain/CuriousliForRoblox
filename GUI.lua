

if shared.CuriousliExecuted then
	warn("Curiousli Already Injected")
	error("Curiousli Already Injected")
	return
else
	shared.CuriousliExecuted = true
	--here--
	
	
	

local curiousli = Instance.new("ScreenGui")
curiousli.IgnoreGuiInset = false
curiousli.ResetOnSpawn = true
curiousli.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
curiousli.Name = "Curiousli"
curiousli.Parent = game.CoreGui

local background = Instance.new("Frame")
background.BackgroundColor3 = Color3.new(0.172549, 0.0666667, 0.176471)
background.BackgroundTransparency = 0.5
background.Position = UDim2.new(0, 0, -0.0252631586, 0)
background.Size = UDim2.new(1, 0, 1.02526319, 0)
background.Visible = false
background.Name = "Background"
background.Parent = curiousli

local combat_tab = Instance.new("Frame")
combat_tab.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
combat_tab.Position = UDim2.new(0.181550205, 0, 0.124349564, 0)
combat_tab.Size = UDim2.new(0.144795194, 0, 0.70882082, 0)
combat_tab.Visible = false
combat_tab.Name = "CombatTab"
combat_tab.Parent = background

local logo = Instance.new("ImageLabel")
logo.BackgroundColor3 = Color3.new(1, 1, 1)
logo.BackgroundTransparency = 1
logo.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo.Visible = true
logo.Name = "Logo"
logo.Parent = combat_tab

local drag = Instance.new("LocalScript")
drag.Name = "Drag"
drag.Parent = logo

local cobat_name = Instance.new("TextButton")
cobat_name.Font = Enum.Font.SourceSansBold
cobat_name.Text = "COMBAT"
cobat_name.TextColor3 = Color3.new(1, 1, 1)
cobat_name.TextScaled = true
cobat_name.TextSize = 14
cobat_name.TextWrapped = true
cobat_name.BackgroundColor3 = Color3.new(0, 0, 0)
cobat_name.Size = UDim2.new(0.841903806, 0, 0.0536818691, 0)
cobat_name.Visible = true
cobat_name.Name = "CobatName"
cobat_name.Parent = combat_tab

local drag_2 = Instance.new("LocalScript")
drag_2.Name = "Drag"
drag_2.Parent = cobat_name

local main = Instance.new("ScrollingFrame")
main.CanvasSize = UDim2.new(0, 0, 4, 0)
main.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main.ScrollBarThickness = 7
main.Active = true
main.BackgroundColor3 = Color3.new(1, 1, 1)
main.BackgroundTransparency = 1
main.Position = UDim2.new(0, 0, 0.0700198337, 0)
main.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main.Visible = true
main.Name = "Main"
main.Parent = combat_tab

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.Parent = main

local blatant_tab = Instance.new("Frame")
blatant_tab.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
blatant_tab.Position = UDim2.new(0.181999996, 0, 0.123999998, 0)
blatant_tab.Size = UDim2.new(0.144999996, 0, 0.708999991, 0)
blatant_tab.Visible = false
blatant_tab.Name = "BlatantTab"
blatant_tab.Parent = background

local logo_2 = Instance.new("ImageLabel")
logo_2.BackgroundColor3 = Color3.new(1, 1, 1)
logo_2.BackgroundTransparency = 1
logo_2.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_2.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_2.Visible = true
logo_2.Name = "Logo"
logo_2.Parent = blatant_tab

local drag_3 = Instance.new("LocalScript")
drag_3.Name = "Drag"
drag_3.Parent = logo_2

local blata_name = Instance.new("TextButton")
blata_name.Font = Enum.Font.SourceSansBold
blata_name.Text = "BLATANT"
blata_name.TextColor3 = Color3.new(1, 1, 1)
blata_name.TextScaled = true
blata_name.TextSize = 14
blata_name.TextWrapped = true
blata_name.BackgroundColor3 = Color3.new(0, 0, 0)
blata_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
blata_name.Visible = true
blata_name.Name = "BlataName"
blata_name.Parent = blatant_tab

local drag_4 = Instance.new("LocalScript")
drag_4.Name = "Drag"
drag_4.Parent = blata_name

local main_2 = Instance.new("ScrollingFrame")
main_2.CanvasSize = UDim2.new(0, 0, 4, 0)
main_2.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_2.ScrollBarThickness = 7
main_2.Active = true
main_2.BackgroundColor3 = Color3.new(1, 1, 1)
main_2.BackgroundTransparency = 1
main_2.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_2.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_2.Visible = true
main_2.Name = "Main"
main_2.Parent = blatant_tab

local uilist_layout_2 = Instance.new("UIListLayout")
uilist_layout_2.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_2.Parent = main_2

local render_tab = Instance.new("Frame")
render_tab.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
render_tab.Position = UDim2.new(0.181999996, 0, 0.123999998, 0)
render_tab.Size = UDim2.new(0.144999996, 0, 0.708999991, 0)
render_tab.Visible = false
render_tab.Name = "RenderTab"
render_tab.Parent = background

local logo_3 = Instance.new("ImageLabel")
logo_3.BackgroundColor3 = Color3.new(1, 1, 1)
logo_3.BackgroundTransparency = 1
logo_3.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_3.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_3.Visible = true
logo_3.Name = "Logo"
logo_3.Parent = render_tab

local drag_5 = Instance.new("LocalScript")
drag_5.Name = "Drag"
drag_5.Parent = logo_3

local reder_name = Instance.new("TextButton")
reder_name.Font = Enum.Font.SourceSansBold
reder_name.Text = "RENDER"
reder_name.TextColor3 = Color3.new(1, 1, 1)
reder_name.TextScaled = true
reder_name.TextSize = 14
reder_name.TextWrapped = true
reder_name.BackgroundColor3 = Color3.new(0, 0, 0)
reder_name.Size = UDim2.new(0.837430656, 0, 0.0536818728, 0)
reder_name.Visible = true
reder_name.Name = "RederName"
reder_name.Parent = render_tab

local drag_6 = Instance.new("LocalScript")
drag_6.Name = "Drag"
drag_6.Parent = reder_name

local main_3 = Instance.new("ScrollingFrame")
main_3.CanvasSize = UDim2.new(0, 0, 4, 0)
main_3.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_3.ScrollBarThickness = 7
main_3.Active = true
main_3.BackgroundColor3 = Color3.new(1, 1, 1)
main_3.BackgroundTransparency = 1
main_3.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_3.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_3.Visible = true
main_3.Name = "Main"
main_3.Parent = render_tab

local uilist_layout_3 = Instance.new("UIListLayout")
uilist_layout_3.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_3.Parent = main_3

local utility_tab = Instance.new("Frame")
utility_tab.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
utility_tab.Position = UDim2.new(0.181999996, 0, 0.123999998, 0)
utility_tab.Size = UDim2.new(0.144999996, 0, 0.708999991, 0)
utility_tab.Visible = false
utility_tab.Name = "UtilityTab"
utility_tab.Parent = background

local logo_4 = Instance.new("ImageLabel")
logo_4.BackgroundColor3 = Color3.new(1, 1, 1)
logo_4.BackgroundTransparency = 1
logo_4.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_4.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_4.Visible = true
logo_4.Name = "Logo"
logo_4.Parent = utility_tab

local drag_7 = Instance.new("LocalScript")
drag_7.Name = "Drag"
drag_7.Parent = logo_4

local utili_name = Instance.new("TextButton")
utili_name.Font = Enum.Font.SourceSansBold
utili_name.Text = "UTILITY"
utili_name.TextColor3 = Color3.new(1, 1, 1)
utili_name.TextScaled = true
utili_name.TextSize = 14
utili_name.TextWrapped = true
utili_name.BackgroundColor3 = Color3.new(0, 0, 0)
utili_name.Size = UDim2.new(0.85423094, 0, 0.0536818728, 0)
utili_name.Visible = true
utili_name.Name = "UtiliName"
utili_name.Parent = utility_tab

local drag_8 = Instance.new("LocalScript")
drag_8.Name = "Drag"
drag_8.Parent = utili_name

local main_4 = Instance.new("ScrollingFrame")
main_4.CanvasSize = UDim2.new(0, 0, 4, 0)
main_4.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_4.ScrollBarThickness = 7
main_4.Active = true
main_4.BackgroundColor3 = Color3.new(1, 1, 1)
main_4.BackgroundTransparency = 1
main_4.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_4.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_4.Visible = true
main_4.Name = "Main"
main_4.Parent = utility_tab

local uilist_layout_4 = Instance.new("UIListLayout")
uilist_layout_4.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_4.Parent = main_4

local world_tab = Instance.new("Frame")
world_tab.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
world_tab.Position = UDim2.new(0.181999996, 0, 0.123999998, 0)
world_tab.Size = UDim2.new(0.144999996, 0, 0.708999991, 0)
world_tab.Visible = false
world_tab.Name = "WorldTab"
world_tab.Parent = background

local logo_5 = Instance.new("ImageLabel")
logo_5.BackgroundColor3 = Color3.new(1, 1, 1)
logo_5.BackgroundTransparency = 1
logo_5.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_5.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_5.Visible = true
logo_5.Name = "Logo"
logo_5.Parent = world_tab

local drag_9 = Instance.new("LocalScript")
drag_9.Name = "Drag"
drag_9.Parent = logo_5

local worl_name = Instance.new("TextButton")
worl_name.Font = Enum.Font.SourceSansBold
worl_name.Text = "WORLD"
worl_name.TextColor3 = Color3.new(1, 1, 1)
worl_name.TextScaled = true
worl_name.TextSize = 14
worl_name.TextWrapped = true
worl_name.BackgroundColor3 = Color3.new(0, 0, 0)
worl_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
worl_name.Visible = true
worl_name.Name = "WorlName"
worl_name.Parent = world_tab

local drag_10 = Instance.new("LocalScript")
drag_10.Name = "Drag"
drag_10.Parent = worl_name

local main_5 = Instance.new("ScrollingFrame")
main_5.CanvasSize = UDim2.new(0, 0, 4, 0)
main_5.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_5.ScrollBarThickness = 7
main_5.Active = true
main_5.BackgroundColor3 = Color3.new(1, 1, 1)
main_5.BackgroundTransparency = 1
main_5.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_5.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_5.Visible = true
main_5.Name = "Main"
main_5.Parent = world_tab

local uilist_layout_5 = Instance.new("UIListLayout")
uilist_layout_5.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_5.Parent = main_5

local main_6 = Instance.new("Frame")
main_6.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
main_6.Position = UDim2.new(0.00846660603, 0, 0.124349549, 0)
main_6.Size = UDim2.new(0.1591869, 0, 0.443775088, 0)
main_6.Visible = true
main_6.Name = "Main"
main_6.Parent = background

local logo_6 = Instance.new("ImageLabel")
logo_6.BackgroundColor3 = Color3.new(0, 0, 0)
logo_6.BackgroundTransparency = 1
logo_6.Position = UDim2.new(0, 0, 0.1151435, 0)
logo_6.Size = UDim2.new(1.00000024, 0, 0.117180698, 0)
logo_6.Visible = true
logo_6.Name = "Logo"
logo_6.Parent = main_6

local drag_11 = Instance.new("LocalScript")
drag_11.Name = "Drag"
drag_11.Parent = main_6

local setting_button = Instance.new("ImageButton")
setting_button.BackgroundColor3 = Color3.new(0, 0, 0)
setting_button.BackgroundTransparency = 1
setting_button.Position = UDim2.new(0.594022155, 0, 0.0191950463, 0)
setting_button.Size = UDim2.new(0.161926359, 0, 0.0597290657, 0)
setting_button.Visible = true
setting_button.Name = "SettingButton"
setting_button.Parent = main_6

local local_script = Instance.new("LocalScript")
local_script.Parent = setting_button

local settings = Instance.new("Frame")
settings.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
settings.Position = UDim2.new(0, 0, -0.00233499566, 0)
settings.Size = UDim2.new(0.999999881, 0, 1.00233495, 0)
settings.Visible = false
settings.ZIndex = 2
settings.Name = "Settings"
settings.Parent = main_6

local sort_gui = Instance.new("TextButton")
sort_gui.Font = Enum.Font.SourceSansBold
sort_gui.Text = "SORT GUI"
sort_gui.TextColor3 = Color3.new(0, 0, 0)
sort_gui.TextScaled = true
sort_gui.TextSize = 14
sort_gui.TextWrapped = true
sort_gui.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
sort_gui.Position = UDim2.new(0, 0, 0.840976357, 0)
sort_gui.Size = UDim2.new(0.418098599, 0, 0.0698872209, 0)
sort_gui.Visible = true
sort_gui.ZIndex = 3
sort_gui.Name = "SortGUI"
sort_gui.Parent = settings

local local_script_2 = Instance.new("LocalScript")
local_script_2.Parent = sort_gui

local uninject = Instance.new("TextButton")
uninject.Font = Enum.Font.SourceSansBold
uninject.Text = "UNINJECT"
uninject.TextColor3 = Color3.new(0, 0, 0)
uninject.TextScaled = true
uninject.TextSize = 14
uninject.TextWrapped = true
uninject.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
uninject.Position = UDim2.new(0.499222219, 0, 0.927170455, 0)
uninject.Size = UDim2.new(0.499222159, 0, 0.0722167939, 0)
uninject.Visible = true
uninject.ZIndex = 3
uninject.Name = "UNINJECT"
uninject.Parent = settings

local local_script_3 = Instance.new("LocalScript")
local_script_3.Parent = uninject

local blur = Instance.new("TextButton")
blur.Font = Enum.Font.SourceSansBold
blur.Text = "BLUR Background"
blur.TextColor3 = Color3.new(0, 0, 0)
blur.TextScaled = true
blur.TextSize = 14
blur.TextWrapped = true
blur.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
blur.Position = UDim2.new(0, 0, 0.929499984, 0)
blur.Size = UDim2.new(0.499222159, 0, 0.0698872209, 0)
blur.Visible = true
blur.ZIndex = 3
blur.Name = "Blur"
blur.Parent = settings

local local_script_4 = Instance.new("LocalScript")
local_script_4.Parent = blur

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

local local_script_5 = Instance.new("LocalScript")
local_script_5.Parent = close

local drag_12 = Instance.new("LocalScript")
drag_12.Name = "Drag"
drag_12.Parent = settings

local credits = Instance.new("TextLabel")
credits.Font = Enum.Font.SourceSans
credits.Text = "CREDITS TO:"
credits.TextColor3 = Color3.new(1, 1, 1)
credits.TextScaled = true
credits.TextSize = 14
credits.TextWrapped = true
credits.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
credits.Position = UDim2.new(0, 0, 0.109489977, 0)
credits.Size = UDim2.new(0.998444319, 0, 0.0652280748, 0)
credits.Visible = true
credits.ZIndex = 3
credits.Name = "Credits"
credits.Parent = settings

local vape = Instance.new("ImageLabel")
vape.BackgroundColor3 = Color3.new(1, 1, 1)
vape.BackgroundTransparency = 1
vape.Position = UDim2.new(0, 0, 1.42857134, 0)
vape.Size = UDim2.new(0.881250024, 0, 1.99999988, 0)
vape.Visible = true
vape.ZIndex = 3
vape.Name = "Vape"
vape.Parent = credits

local vape_two = Instance.new("ImageLabel")
vape_two.BackgroundColor3 = Color3.new(1, 1, 1)
vape_two.BackgroundTransparency = 1
vape_two.Position = UDim2.new(0.881250024, 0, 1.42857134, 0)
vape_two.Size = UDim2.new(0.120308116, 0, 1.99999988, 0)
vape_two.Visible = true
vape_two.ZIndex = 3
vape_two.Name = "VapeTwo"
vape_two.Parent = credits

local un_sortGuI = Instance.new("TextButton")
un_sortGuI.Font = Enum.Font.SourceSansBold
un_sortGuI.Text = "UNSORT GUI"
un_sortGuI.TextColor3 = Color3.new(0, 0, 0)
un_sortGuI.TextScaled = true
un_sortGuI.TextSize = 14
un_sortGuI.TextWrapped = true
un_sortGuI.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
un_sortGuI.Position = UDim2.new(0.418098569, 0, 0.840976179, 0)
un_sortGuI.Size = UDim2.new(0.580345809, 0, 0.0698872209, 0)
un_sortGuI.Visible = true
un_sortGuI.ZIndex = 3
un_sortGuI.Name = "UnSortGUI"
un_sortGuI.Parent = settings

local local_script_6 = Instance.new("LocalScript")
local_script_6.Parent = un_sortGuI

local combat = Instance.new("TextButton")
combat.Font = Enum.Font.SourceSansBold
combat.Text = "COMBAT"
combat.TextColor3 = Color3.new(0, 0, 0)
combat.TextScaled = true
combat.TextSize = 14
combat.TextWrapped = true
combat.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
combat.BorderSizePixel = 0
combat.Position = UDim2.new(0.0586159304, 0, 0.28271991, 0)
combat.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
combat.Visible = true
combat.Name = "Combat"
combat.Parent = main_6

local logo_7 = Instance.new("ImageLabel")
logo_7.ImageColor3 = Color3.new(0, 0, 0)
logo_7.BackgroundColor3 = Color3.new(1, 1, 1)
logo_7.BackgroundTransparency = 1
logo_7.Position = UDim2.new(1, 0, 0, 0)
logo_7.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_7.Visible = true
logo_7.Name = "Logo"
logo_7.Parent = combat

local local_script_7 = Instance.new("LocalScript")
local_script_7.Parent = combat

local blatant = Instance.new("TextButton")
blatant.Font = Enum.Font.SourceSansBold
blatant.Text = "BLATANT"
blatant.TextColor3 = Color3.new(0, 0, 0)
blatant.TextScaled = true
blatant.TextSize = 14
blatant.TextWrapped = true
blatant.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
blatant.BorderSizePixel = 0
blatant.Position = UDim2.new(0.0586159304, 0, 0.427794874, 0)
blatant.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
blatant.Visible = true
blatant.Name = "Blatant"
blatant.Parent = main_6

local logo_8 = Instance.new("ImageLabel")
logo_8.ImageColor3 = Color3.new(0, 0, 0)
logo_8.BackgroundColor3 = Color3.new(1, 1, 1)
logo_8.BackgroundTransparency = 1
logo_8.Position = UDim2.new(1, 0, 0, 0)
logo_8.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_8.Visible = true
logo_8.Name = "Logo"
logo_8.Parent = blatant

local local_script_8 = Instance.new("LocalScript")
local_script_8.Parent = blatant

local render = Instance.new("TextButton")
render.Font = Enum.Font.SourceSansBold
render.Text = "RENDER"
render.TextColor3 = Color3.new(0, 0, 0)
render.TextScaled = true
render.TextSize = 14
render.TextWrapped = true
render.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
render.BorderSizePixel = 0
render.Position = UDim2.new(0.0586159304, 0, 0.565774381, 0)
render.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
render.Visible = true
render.Name = "Render"
render.Parent = main_6

local logo_9 = Instance.new("ImageLabel")
logo_9.ImageColor3 = Color3.new(0, 0, 0)
logo_9.BackgroundColor3 = Color3.new(1, 1, 1)
logo_9.BackgroundTransparency = 1
logo_9.Position = UDim2.new(1, 0, 0, 0)
logo_9.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_9.Visible = true
logo_9.Name = "Logo"
logo_9.Parent = render

local local_script_9 = Instance.new("LocalScript")
local_script_9.Parent = render

local utility = Instance.new("TextButton")
utility.Font = Enum.Font.SourceSansBold
utility.Text = "UTILITY"
utility.TextColor3 = Color3.new(0, 0, 0)
utility.TextScaled = true
utility.TextSize = 14
utility.TextWrapped = true
utility.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
utility.BorderSizePixel = 0
utility.Position = UDim2.new(0.0586159304, 0, 0.704150498, 0)
utility.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
utility.Visible = true
utility.Name = "Utility"
utility.Parent = main_6

local logo_10 = Instance.new("ImageLabel")
logo_10.ImageColor3 = Color3.new(0, 0, 0)
logo_10.BackgroundColor3 = Color3.new(1, 1, 1)
logo_10.BackgroundTransparency = 1
logo_10.Position = UDim2.new(1, 0, 0, 0)
logo_10.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_10.Visible = true
logo_10.Name = "Logo"
logo_10.Parent = utility

local local_script_10 = Instance.new("LocalScript")
local_script_10.Parent = utility

local world = Instance.new("TextButton")
world.Font = Enum.Font.SourceSansBold
world.Text = "WORLD"
world.TextColor3 = Color3.new(0, 0, 0)
world.TextScaled = true
world.TextSize = 14
world.TextWrapped = true
world.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
world.BorderSizePixel = 0
world.Position = UDim2.new(0.0586159304, 0, 0.835656047, 0)
world.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
world.Visible = true
world.Name = "World"
world.Parent = main_6

local logo_11 = Instance.new("ImageLabel")
logo_11.ImageColor3 = Color3.new(0, 0, 0)
logo_11.BackgroundColor3 = Color3.new(1, 1, 1)
logo_11.BackgroundTransparency = 1
logo_11.Position = UDim2.new(1, 0, 0, 0)
logo_11.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_11.Visible = true
logo_11.Name = "Logo"
logo_11.Parent = world

local local_script_11 = Instance.new("LocalScript")
local_script_11.Parent = world

local discord_button = Instance.new("ImageButton")
discord_button.BackgroundColor3 = Color3.new(0, 0, 0)
discord_button.BackgroundTransparency = 1
discord_button.Position = UDim2.new(0.823931456, 0, 0.0191950463, 0)
discord_button.Size = UDim2.new(0.176068619, 0, 0.0597290657, 0)
discord_button.Visible = true
discord_button.Name = "DiscordButton"
discord_button.Parent = main_6

local local_script_12 = Instance.new("LocalScript")
local_script_12.Parent = discord_button

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

-- Drag
task.spawn(function()
	local script = drag_5

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
	local script = drag_6

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
	local script = drag_7

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
	local script = drag_8

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
	local script = drag_9

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
	local script = drag_10

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
	local script = drag_11

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

	
	
	local GUI = script.Parent.Parent.Parent.Parent
	local Combat = GUI.CombatTab
	local Blatant = GUI.BlatantTab
	local Render = GUI.RenderTab
	local Utility = GUI.UtilityTab
	local World = GUI.WorldTab
	
	script.Parent.MouseButton1Click:Connect(function()
		Combat:TweenPosition(UDim2.new(0.182, 0,0.124, 0), "Out", "Sine", 1)
		Blatant:TweenPosition(UDim2.new(0.347, 0,0.124, 0), "Out", "Sine", 1)
		Render:TweenPosition(UDim2.new(0.511, 0,0.124, 0), "Out", "Sine", 1)
		Utility:TweenPosition(UDim2.new(0.675, 0,0.124, 0), "Out", "Sine", 1)
		World:TweenPosition(UDim2.new(0.845, 0,0.124, 0), "Out", "Sine", 1)
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

	script.Parent.MouseButton1Click:Connect(function()
		shared.CuriousliExecuted = false
		script.Parent.Parent.Parent.Parent.Parent:Destroy()
	end)
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
	local script = local_script_5

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
	local script = drag_12

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
	local script = local_script_6

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	
	
	local GUI = script.Parent.Parent.Parent.Parent
	local Combat = GUI.CombatTab
	local Blatant = GUI.BlatantTab
	local Render = GUI.RenderTab
	local Utility = GUI.UtilityTab
	local World = GUI.WorldTab
	
	script.Parent.MouseButton1Click:Connect(function()
		Combat:TweenPosition(UDim2.new(0.182, 0,0.124, 0), "Out", "Sine", 1)
		Blatant:TweenPosition(UDim2.new(0.182, 0,0.124, 0), "Out", "Sine", 1)
		Render:TweenPosition(UDim2.new(0.182, 0,0.124, 0), "Out", "Sine", 1)
		Utility:TweenPosition(UDim2.new(0.182, 0,0.124, 0), "Out", "Sine", 1)
		World:TweenPosition(UDim2.new(0.182, 0,0.124, 0), "Out", "Sine", 1)
	end)
end)

-- LocalScript
task.spawn(function()
	local script = local_script_7

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local GUI = script.Parent.Parent.Parent.CombatTab
	
	--31, 31, 31
	--20 20 20
	
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

-- LocalScript
task.spawn(function()
	local script = local_script_8

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local GUI = script.Parent.Parent.Parent.BlatantTab
	
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

-- LocalScript
task.spawn(function()
	local script = local_script_9

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local GUI = script.Parent.Parent.Parent.RenderTab
	
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

-- LocalScript
task.spawn(function()
	local script = local_script_10

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local GUI = script.Parent.Parent.Parent.UtilityTab
	
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

-- LocalScript
task.spawn(function()
	local script = local_script_11

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local enabled = false
	local GUI = script.Parent.Parent.Parent.WorldTab
	
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

-- LocalScript
task.spawn(function()
	local script = local_script_12

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local invite = "https://discord.gg/h9BzRqMse2"
		setclipboard(invite)
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


	--end--
end

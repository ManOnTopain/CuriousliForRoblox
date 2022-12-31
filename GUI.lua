

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
background.BackgroundColor3 = Color3.new(0.505882, 0.192157, 0.517647)
background.BackgroundTransparency = 0.5
background.Size = UDim2.new(1, 0, 1, 0)
background.Visible = false
background.Name = "Background"
background.Parent = curiousli

local main = Instance.new("Frame")
main.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
main.Position = UDim2.new(0.00846660417, 0, 0.0401606411, 0)
main.Size = UDim2.new(0.145813748, 0, 0.901606441, 0)
main.Visible = true
main.Name = "Main"
main.Parent = background

local logo = Instance.new("ImageLabel")
logo.BackgroundColor3 = Color3.new(1, 1, 1)
logo.BackgroundTransparency = 1
logo.Position = UDim2.new(0, 0, 0.036281798, 0)
logo.Size = UDim2.new(1, 0, 0.0910983458, 0)
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
settings.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
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
uninject.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
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
blur.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
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

local drag_2 = Instance.new("LocalScript")
drag_2.Name = "Drag"
drag_2.Parent = settings

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
un_sortGuI.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
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

local local_script_7 = Instance.new("LocalScript")
local_script_7.Parent = combat

local blatant = Instance.new("TextButton")
blatant.Font = Enum.Font.SourceSansBold
blatant.Text = "BLATANT"
blatant.TextColor3 = Color3.new(0, 0, 0)
blatant.TextScaled = true
blatant.TextSize = 14
blatant.TextWrapped = true
blatant.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
blatant.Position = UDim2.new(0, 0, 0.266191542, 0)
blatant.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
blatant.Visible = true
blatant.Name = "Blatant"
blatant.Parent = main

local logo_3 = Instance.new("ImageLabel")
logo_3.ImageColor3 = Color3.new(0, 0, 0)
logo_3.BackgroundColor3 = Color3.new(1, 1, 1)
logo_3.BackgroundTransparency = 1
logo_3.Position = UDim2.new(1, 0, 0, 0)
logo_3.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_3.Visible = true
logo_3.Name = "Logo"
logo_3.Parent = blatant

local local_script_8 = Instance.new("LocalScript")
local_script_8.Parent = blatant

local render = Instance.new("TextButton")
render.Font = Enum.Font.SourceSansBold
render.Text = "RENDER"
render.TextColor3 = Color3.new(0, 0, 0)
render.TextScaled = true
render.TextSize = 14
render.TextWrapped = true
render.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
render.Position = UDim2.new(0, 0, 0.361927092, 0)
render.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
render.Visible = true
render.Name = "Render"
render.Parent = main

local logo_4 = Instance.new("ImageLabel")
logo_4.ImageColor3 = Color3.new(0, 0, 0)
logo_4.BackgroundColor3 = Color3.new(1, 1, 1)
logo_4.BackgroundTransparency = 1
logo_4.Position = UDim2.new(1, 0, 0, 0)
logo_4.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_4.Visible = true
logo_4.Name = "Logo"
logo_4.Parent = render

local local_script_9 = Instance.new("LocalScript")
local_script_9.Parent = render

local utility = Instance.new("TextButton")
utility.Font = Enum.Font.SourceSansBold
utility.Text = "UTILITY"
utility.TextColor3 = Color3.new(0, 0, 0)
utility.TextScaled = true
utility.TextSize = 14
utility.TextWrapped = true
utility.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
utility.Position = UDim2.new(0, 0, 0.459997654, 0)
utility.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
utility.Visible = true
utility.Name = "Utility"
utility.Parent = main

local logo_5 = Instance.new("ImageLabel")
logo_5.ImageColor3 = Color3.new(0, 0, 0)
logo_5.BackgroundColor3 = Color3.new(1, 1, 1)
logo_5.BackgroundTransparency = 1
logo_5.Position = UDim2.new(1, 0, 0, 0)
logo_5.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_5.Visible = true
logo_5.Name = "Logo"
logo_5.Parent = utility

local local_script_10 = Instance.new("LocalScript")
local_script_10.Parent = utility

local world = Instance.new("TextButton")
world.Font = Enum.Font.SourceSansBold
world.Text = "WORLD"
world.TextColor3 = Color3.new(0, 0, 0)
world.TextScaled = true
world.TextSize = 14
world.TextWrapped = true
world.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
world.Position = UDim2.new(0, 0, 0.558068216, 0)
world.Size = UDim2.new(0.879878938, 0, 0.0793904588, 0)
world.Visible = true
world.Name = "World"
world.Parent = main

local logo_6 = Instance.new("ImageLabel")
logo_6.ImageColor3 = Color3.new(0, 0, 0)
logo_6.BackgroundColor3 = Color3.new(1, 1, 1)
logo_6.BackgroundTransparency = 1
logo_6.Position = UDim2.new(1, 0, 0, 0)
logo_6.Size = UDim2.new(0.136519849, 0, 1, 0)
logo_6.Visible = true
logo_6.Name = "Logo"
logo_6.Parent = world

local local_script_11 = Instance.new("LocalScript")
local_script_11.Parent = world

local discord_button = Instance.new("ImageButton")
discord_button.BackgroundColor3 = Color3.new(1, 1, 1)
discord_button.BackgroundTransparency = 1
discord_button.Position = UDim2.new(0.692670524, 0, 0, 0)
discord_button.Size = UDim2.new(0.131045982, 0, 0.0350252017, 0)
discord_button.Visible = true
discord_button.Name = "DiscordButton"
discord_button.Parent = main

local local_script_12 = Instance.new("LocalScript")
local_script_12.Parent = discord_button

local combat_tab = Instance.new("Frame")
combat_tab.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
combat_tab.Position = UDim2.new(0.179253861, 0, 0.0399999991, 0)
combat_tab.Size = UDim2.new(0.145999998, 0, 0.90200001, 0)
combat_tab.Visible = false
combat_tab.Name = "CombatTab"
combat_tab.Parent = background

local logo_7 = Instance.new("ImageLabel")
logo_7.BackgroundColor3 = Color3.new(1, 1, 1)
logo_7.BackgroundTransparency = 1
logo_7.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_7.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_7.Visible = true
logo_7.Name = "Logo"
logo_7.Parent = combat_tab

local drag_3 = Instance.new("LocalScript")
drag_3.Name = "Drag"
drag_3.Parent = logo_7

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

local blatant_tab = Instance.new("Frame")
blatant_tab.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
blatant_tab.Position = UDim2.new(0.179000005, 0, 0.0399999991, 0)
blatant_tab.Size = UDim2.new(0.145999998, 0, 0.90200001, 0)
blatant_tab.Visible = false
blatant_tab.Name = "BlatantTab"
blatant_tab.Parent = background

local logo_8 = Instance.new("ImageLabel")
logo_8.BackgroundColor3 = Color3.new(1, 1, 1)
logo_8.BackgroundTransparency = 1
logo_8.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_8.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_8.Visible = true
logo_8.Name = "Logo"
logo_8.Parent = blatant_tab

local drag_5 = Instance.new("LocalScript")
drag_5.Name = "Drag"
drag_5.Parent = logo_8

local blata_name = Instance.new("TextButton")
blata_name.Font = Enum.Font.SourceSansBold
blata_name.Text = "BLATANT"
blata_name.TextColor3 = Color3.new(1, 1, 1)
blata_name.TextScaled = true
blata_name.TextSize = 14
blata_name.TextWrapped = true
blata_name.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
blata_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
blata_name.Visible = true
blata_name.Name = "BlataName"
blata_name.Parent = blatant_tab

local drag_6 = Instance.new("LocalScript")
drag_6.Name = "Drag"
drag_6.Parent = blata_name

local main_3 = Instance.new("ScrollingFrame")
main_3.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_3.Active = true
main_3.BackgroundColor3 = Color3.new(1, 1, 1)
main_3.BackgroundTransparency = 1
main_3.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_3.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_3.Visible = true
main_3.Name = "Main"
main_3.Parent = blatant_tab

local uilist_layout_2 = Instance.new("UIListLayout")
uilist_layout_2.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_2.Parent = main_3

local render_tab = Instance.new("Frame")
render_tab.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
render_tab.Position = UDim2.new(0.179000005, 0, 0.0399999991, 0)
render_tab.Size = UDim2.new(0.145999998, 0, 0.90200001, 0)
render_tab.Visible = false
render_tab.Name = "RenderTab"
render_tab.Parent = background

local logo_9 = Instance.new("ImageLabel")
logo_9.BackgroundColor3 = Color3.new(1, 1, 1)
logo_9.BackgroundTransparency = 1
logo_9.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_9.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_9.Visible = true
logo_9.Name = "Logo"
logo_9.Parent = render_tab

local drag_7 = Instance.new("LocalScript")
drag_7.Name = "Drag"
drag_7.Parent = logo_9

local reder_name = Instance.new("TextButton")
reder_name.Font = Enum.Font.SourceSansBold
reder_name.Text = "RENDER"
reder_name.TextColor3 = Color3.new(1, 1, 1)
reder_name.TextScaled = true
reder_name.TextSize = 14
reder_name.TextWrapped = true
reder_name.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
reder_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
reder_name.Visible = true
reder_name.Name = "RederName"
reder_name.Parent = render_tab

local drag_8 = Instance.new("LocalScript")
drag_8.Name = "Drag"
drag_8.Parent = reder_name

local main_4 = Instance.new("ScrollingFrame")
main_4.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_4.Active = true
main_4.BackgroundColor3 = Color3.new(1, 1, 1)
main_4.BackgroundTransparency = 1
main_4.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_4.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_4.Visible = true
main_4.Name = "Main"
main_4.Parent = render_tab

local uilist_layout_3 = Instance.new("UIListLayout")
uilist_layout_3.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_3.Parent = main_4

local utility_tab = Instance.new("Frame")
utility_tab.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
utility_tab.Position = UDim2.new(0.179000005, 0, 0.0399999991, 0)
utility_tab.Size = UDim2.new(0.145999998, 0, 0.90200001, 0)
utility_tab.Visible = false
utility_tab.Name = "UtilityTab"
utility_tab.Parent = background

local logo_10 = Instance.new("ImageLabel")
logo_10.BackgroundColor3 = Color3.new(1, 1, 1)
logo_10.BackgroundTransparency = 1
logo_10.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_10.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_10.Visible = true
logo_10.Name = "Logo"
logo_10.Parent = utility_tab

local drag_9 = Instance.new("LocalScript")
drag_9.Name = "Drag"
drag_9.Parent = logo_10

local utili_name = Instance.new("TextButton")
utili_name.Font = Enum.Font.SourceSansBold
utili_name.Text = "UTILITY"
utili_name.TextColor3 = Color3.new(1, 1, 1)
utili_name.TextScaled = true
utili_name.TextSize = 14
utili_name.TextWrapped = true
utili_name.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
utili_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
utili_name.Visible = true
utili_name.Name = "UtiliName"
utili_name.Parent = utility_tab

local drag_10 = Instance.new("LocalScript")
drag_10.Name = "Drag"
drag_10.Parent = utili_name

local main_5 = Instance.new("ScrollingFrame")
main_5.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_5.Active = true
main_5.BackgroundColor3 = Color3.new(1, 1, 1)
main_5.BackgroundTransparency = 1
main_5.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_5.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_5.Visible = true
main_5.Name = "Main"
main_5.Parent = utility_tab

local uilist_layout_4 = Instance.new("UIListLayout")
uilist_layout_4.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_4.Parent = main_5

local world_tab = Instance.new("Frame")
world_tab.BackgroundColor3 = Color3.new(0.988235, 0.0117647, 0.972549)
world_tab.Position = UDim2.new(0.179000005, 0, 0.0399999991, 0)
world_tab.Size = UDim2.new(0.145999998, 0, 0.90200001, 0)
world_tab.Visible = false
world_tab.Name = "WorldTab"
world_tab.Parent = background

local logo_11 = Instance.new("ImageLabel")
logo_11.BackgroundColor3 = Color3.new(1, 1, 1)
logo_11.BackgroundTransparency = 1
logo_11.Position = UDim2.new(0.884988844, 0, 0.000178105271, 0)
logo_11.Size = UDim2.new(0.112181686, 0, 0.0535037667, 0)
logo_11.Visible = true
logo_11.Name = "Logo"
logo_11.Parent = world_tab

local drag_11 = Instance.new("LocalScript")
drag_11.Name = "Drag"
drag_11.Parent = logo_11

local worl_name = Instance.new("TextButton")
worl_name.Font = Enum.Font.SourceSansBold
worl_name.Text = "WORLD"
worl_name.TextColor3 = Color3.new(1, 1, 1)
worl_name.TextScaled = true
worl_name.TextSize = 14
worl_name.TextWrapped = true
worl_name.BackgroundColor3 = Color3.new(0.333333, 0.345098, 0.12549)
worl_name.Size = UDim2.new(0.884988844, 0, 0.0536818691, 0)
worl_name.Visible = true
worl_name.Name = "WorlName"
worl_name.Parent = world_tab

local drag_12 = Instance.new("LocalScript")
drag_12.Name = "Drag"
drag_12.Parent = worl_name

local main_6 = Instance.new("ScrollingFrame")
main_6.ScrollBarImageColor3 = Color3.new(0, 0, 0)
main_6.Active = true
main_6.BackgroundColor3 = Color3.new(1, 1, 1)
main_6.BackgroundTransparency = 1
main_6.Position = UDim2.new(0, 0, 0.0700198337, 0)
main_6.Size = UDim2.new(0.997170568, 0, 0.928929865, 0)
main_6.Visible = true
main_6.Name = "Main"
main_6.Parent = world_tab

local uilist_layout_5 = Instance.new("UIListLayout")
uilist_layout_5.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_5.Parent = main_6

local right_shift = Instance.new("LocalScript")
right_shift.Name = "RightShift"
right_shift.Parent = curiousli

local warn_list = Instance.new("Frame")
warn_list.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
warn_list.BackgroundTransparency = 1
warn_list.Position = UDim2.new(0.729754329, 0, 0, 0)
warn_list.Size = UDim2.new(0.270245671, 0, 1, 0)
warn_list.Visible = true
warn_list.Name = "WarnList"
warn_list.Parent = curiousli

local uilist_layout_6 = Instance.new("UIListLayout")
uilist_layout_6.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout_6.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout_6.Parent = warn_list

local heart = Instance.new("ImageLabel")
heart.BackgroundColor3 = Color3.new(1, 1, 1)
heart.BackgroundTransparency = 1
heart.Position = UDim2.new(0.352387995, 0, 0.690526307, 0)
heart.Size = UDim2.new(0.0236578714, 0, 0.0568421036, 0)
heart.Visible = false
heart.Name = "Heart"
heart.Parent = curiousli

local main_7 = Instance.new("TextLabel")
main_7.Font = Enum.Font.SourceSans
main_7.Text = "0"
main_7.TextColor3 = Color3.new(1, 1, 1)
main_7.TextScaled = true
main_7.TextSize = 14
main_7.TextWrapped = true
main_7.BackgroundColor3 = Color3.new(1, 1, 1)
main_7.BackgroundTransparency = 1
main_7.Position = UDim2.new(1.42307687, 0, -0.111111112, 0)
main_7.Size = UDim2.new(6.07692289, 0, 1.18518519, 0)
main_7.Visible = true
main_7.Name = "Main"
main_7.Parent = heart

local crash = Instance.new("Frame")
crash.BackgroundColor3 = Color3.new(1, 1, 1)
crash.Position = UDim2.new(0, 0, -0.414736837, 0)
crash.Size = UDim2.new(1, 0, 1.41473687, 0)
crash.Visible = false
crash.ZIndex = 10
crash.Name = "CRASH"
crash.Parent = curiousli

local main_8 = Instance.new("ImageLabel")
main_8.BackgroundColor3 = Color3.new(1, 1, 1)
main_8.BackgroundTransparency = 1
main_8.Position = UDim2.new(0.317561507, 0, 0.502976179, 0)
main_8.Size = UDim2.new(0.36396724, 0, 0.254285783, 0)
main_8.Visible = true
main_8.ZIndex = 15
main_8.Name = "Main"
main_8.Parent = crash

local text_button = Instance.new("TextButton")
text_button.Font = Enum.Font.SourceSans
text_button.Text = ""
text_button.TextColor3 = Color3.new(0, 0, 0)
text_button.TextSize = 14
text_button.BackgroundColor3 = Color3.new(1, 1, 1)
text_button.BackgroundTransparency = 1
text_button.Position = UDim2.new(0.694999993, 0, 0.784175813, 0)
text_button.Size = UDim2.new(0.305000007, 0, 0.210674077, 0)
text_button.Visible = true
text_button.ZIndex = 17
text_button.Parent = main_8

local local_script_13 = Instance.new("LocalScript")
local_script_13.Parent = text_button

local cmds = Instance.new("Frame")
cmds.BackgroundColor3 = Color3.new(1, 0.909804, 0.45098)
cmds.Position = UDim2.new(0.322110951, 0, 0.0442104936, 0)
cmds.Size = UDim2.new(0.410373062, 0, 0.943158031, 0)
cmds.Visible = false
cmds.Name = "Cmds"
cmds.Parent = curiousli

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.SourceSans
text_label.RichText = true
text_label.Text = "/kill default --Kills everyone that executed script                                               /kick default --Kicks everyone that executed script                                                                  /ban default --Does an fake bedwars ban to whoever executed script                    /disconnect default --false disconnects the people that executed script                                    /exkick default --Fake exploit disconnects people who executed script                             /lagback default --lagbacks them                                                /jump default --makes them jump                                          /sit default --makes them sit down                                            /unsit default  --makes them unsit                                                              /freeze default --freezes them                                                     /unfreeze default --unfreezes them                                         /void default --makes them go to the void                                                                     /crash default  --crashes them                                                                              /chip default --soon                                                                         /errorkick default --destroys their head and error kicks them   "
text_label.TextColor3 = Color3.new(0, 0, 0)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.TextYAlignment = Enum.TextYAlignment.Top
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Visible = true
text_label.Parent = cmds

local private = Instance.new("TextLabel")
private.Font = Enum.Font.SourceSansBold
private.Text = "CURIOUSLI"
private.TextColor3 = Color3.new(0.721569, 0.505882, 0)
private.TextScaled = true
private.TextSize = 14
private.TextWrapped = true
private.BackgroundColor3 = Color3.new(1, 1, 1)
private.BackgroundTransparency = 1
private.Position = UDim2.new(0.826205611, 0, 0, 0)
private.Size = UDim2.new(0.173794359, 0, 0.0821052641, 0)
private.Visible = false
private.Name = "Private"
private.Parent = curiousli

local main_9 = Instance.new("ImageLabel")
main_9.BackgroundColor3 = Color3.new(1, 1, 1)
main_9.BackgroundTransparency = 1
main_9.Position = UDim2.new(0, 0, 1, 0)
main_9.Size = UDim2.new(1, 0, 1.28205132, 0)
main_9.Visible = true
main_9.Name = "Main"
main_9.Parent = private

local happy = Instance.new("Frame")
happy.BackgroundColor3 = Color3.new(1, 0.172549, 0.956863)
happy.Position = UDim2.new(-0.0850000009, 0, -2.3599999, 0)
happy.Size = UDim2.new(1.23483145, 0, 11.2600002, 0)
happy.Visible = false
happy.Name = "HAPPY"
happy.Parent = curiousli

local text_label_2 = Instance.new("TextLabel")
text_label_2.Font = Enum.Font.SourceSans
text_label_2.Text = "HAPPY NEW YEAR!"
text_label_2.TextColor3 = Color3.new(0.921569, 1, 0.2)
text_label_2.TextScaled = true
text_label_2.TextSize = 14
text_label_2.TextWrapped = true
text_label_2.BackgroundColor3 = Color3.new(1, 1, 1)
text_label_2.BackgroundTransparency = 1
text_label_2.Position = UDim2.new(0.0684169233, 0, 0.219089463, 0)
text_label_2.Size = UDim2.new(0.809827089, 0, 0.0420678705, 0)
text_label_2.Visible = true
text_label_2.ZIndex = 4
text_label_2.Parent = happy

local local_script_14 = Instance.new("LocalScript")
local_script_14.Parent = text_label_2

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

	
	
	local GUI = script.Parent.Parent.Parent.Parent
	local Combat = GUI.CombatTab
	local Blatant = GUI.BlatantTab
	local Render = GUI.RenderTab
	local Utility = GUI.UtilityTab
	local World = GUI.WorldTab
	
	script.Parent.MouseButton1Click:Connect(function()
		Combat:TweenPosition(UDim2.new(0.179, 0,0.04, 0), "Out", "Sine", 1)
		Blatant:TweenPosition(UDim2.new(0.349, 0,0.038, 0), "Out", "Sine", 1)
		Render:TweenPosition(UDim2.new(0.521, 0,0.038, 0), "Out", "Sine", 1)
		Utility:TweenPosition(UDim2.new(0.691, 0,0.038, 0), "Out", "Sine", 1)
		World:TweenPosition(UDim2.new(0.854, 0,0.04, 0), "Out", "Sine", 1)
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
		Combat:TweenPosition(UDim2.new(0.179, 0,0.04, 0), "Out", "Sine", 1)
		Blatant:TweenPosition(UDim2.new(0.179, 0,0.04, 0), "Out", "Sine", 1)
		Render:TweenPosition(UDim2.new(0.179, 0,0.04, 0), "Out", "Sine", 1)
		Utility:TweenPosition(UDim2.new(0.179, 0,0.04, 0), "Out", "Sine", 1)
		World:TweenPosition(UDim2.new(0.179, 0,0.04, 0), "Out", "Sine", 1)
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

-- LocalScript
task.spawn(function()
	local script = local_script_13

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.MouseButton1Click:Connect(function()
		setfpscap(9e9)
	end)
end)

-- LocalScript
task.spawn(function()
	local script = local_script_14

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local p = script.Parent
	
	while wait(0.1) do
		p.TextColor3 = Color3.new(0.32549, 0.415686, 1)
		wait(0.5)
		p.TextColor3 = Color3.new(0.45098, 1, 0.470588)
		wait(0.5)
		p.TextColor3 = Color3.new(1, 0.117647, 0.133333)
		wait(0.5)
		p.TextColor3 = Color3.new(1, 0.866667, 0.113725)
		wait(0.5)
		p.TextColor3 = Color3.new(1, 0.321569, 1)
	end
end)

	--end--
end

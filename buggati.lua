--instances

local gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local bar = Instance.new("Frame")
local bar1 = Instance.new("Frame")
local title = Instance.new("TextLabel")
local dec1 = Instance.new("UICorner")
local tab = Instance.new("Frame")
local tab1 = Instance.new("Frame")

--buttons

local toggle = Instance.new("TextButton")
local button = Instance.new("TextButton")
local button1 = Instance.new("TextButton")

--properties???

gui.Parent = game.Players.LocalPlayer.PlayerGui

main.Parent = gui
main.Size = UDim2.new(0, 549,0, 355)
main.Position = UDim2.new(0.266, 0,0.268, 0)
main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

toggle.Parent = gui

bar.Parent = main
bar.Size = UDim2.new(0, 549,0, 22)
bar.Position = UDim2.new(0, 0,0.286, 0)
bar.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
bar.BorderColor3 = Color3.fromRGB(63,63,63)
bar.BorderSizePixel = 0

bar1.Parent = main
bar1.Size = UDim2.new(0, 20,0, 231)
bar1.Position = UDim2.new(0.219, 0,0.348, 0)
bar1.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
bar1.BorderColor3 = Color3.fromRGB(63,63,63)
bar1.BorderSizePixel = 0

button.TextColor3 = Color3.fromRGB(255,255,255)
button.TextScaled = true
button.Parent = main
dec1:Clone().Parent = button
button.Position = UDim2.new(0.011, 0,0.389, 0)
button.Size = UDim2.new(0, 106,0, 29)
button.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
button.Text = "Players"
button.Font = Enum.Font.Arimo

button1.TextColor3 = Color3.fromRGB(255,255,255)
button1.TextScaled = true
button1.Parent = main
dec1:Clone().Parent = button1
button1.Position = UDim2.new(0.011, 0,0.485, 0)
button1.Size = UDim2.new(0, 106,0, 29) 
button1.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
button1.Text = "Teleports"
button1.Font = Enum.Font.Arimo

toggle.Parent = gui
toggle.Size = UDim2.new(0, 106,0, 29)
toggle.Position = UDim2.new(0.471, 0,0.205, 0)
dec1:Clone().Parent = toggle
toggle.TextScaled = true
toggle.TextColor3 = Color3.fromRGB(255,255,255)
toggle.Text = "Toggle"

tab.Parent = main
tab.Size = UDim2.new(0, 409,0, 231)
tab.Position = UDim2.new(0.255, 0,0.348, 0)
tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tab.BorderSizePixel = 0

tab1.Visible = false
tab1.Parent = main
tab1.Size = UDim2.new(0, 409,0, 231)
tab1.Position = UDim2.new(0.255, 0,0.348, 0)
tab1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tab1.BorderSizePixel = 0


title.Parent = main
title.Position = UDim2.new(0.042, 0,0.093, 0)
title.Size = UDim2.new(0, 503,0, 50)
title.TextScaled = true

dec1.Parent = main

--stuff

main.Archivable = true
main.Draggable = true
main.Active = true

toggle.Archivable = true
toggle.Draggable = true
toggle.Active = true

title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.Arimo
title.BackgroundTransparency = 1
title.Text = "Welcome to the worst script ever. Thanks for using it, "..game.Players.LocalPlayer.DisplayName.."."

--FUNCTIONS!!!!!!!!!!!!!!!!!!!!!!!!!!

button.MouseButton1Up:Connect(function()
	tab.Visible = false
	tab1.Visible = true
end)

button1.MouseButton1Up:Connect(function()
	tab.Visible = true
	tab1.Visible = false
end)

button.TouchTap:Connect(function()
	tab.Visible = false
	tab1.Visible = true
end)

button1.TouchTap:Connect(function()
	tab.Visible = true
	tab1.Visible = false
end)

toggle.MouseButton1Up:Connect(function()
	main.Visible = not main.Visible
end)

toggle.TouchTap:Connect(function()
	main.Visible = not main.Visible
end)


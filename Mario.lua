

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "MarioNotifier"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 300, 0, 180)
frame.Position = UDim2.new(0.5, -150, 0.5, -90)

local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1,0,0,40)
title.Text = "🍄 Mario Notifier"
title.TextScaled = true

local info = Instance.new("TextLabel")
info.Parent = frame
info.Position = UDim2.new(0,10,0,50)
info.Size = UDim2.new(1,-20,0,50)
info.Text = "Esperando notificaciones..."
info.TextScaled = true

local button = Instance.new("TextButton")
button.Parent = frame
button.Position = UDim2.new(0.2,0,0.7,0)
button.Size = UDim2.new(0.6,0,0,35)
button.Text = "Probar aviso"

button.MouseButton1Click:Connect(function()
	info.Text = "🧠 Nuevo evento detectado!"
	task.wait(2)
	info.Text = "Esperando notificaciones..."
end)

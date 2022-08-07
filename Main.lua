local ts = game:GetService("TweenService")
local players = game:GetService("Players")
local player = players.LocalPlayer
local playergui = player.PlayerGui

local gui = Instance.new("ScreenGui")
gui.Parent = playergui
gui.ResetOnSpawn = false
gui.Name = "NotificationV2"
gui.IgnoreGuiInset = true

local notificationHolder = Instance.new("Frame")
notificationHolder.Parent = gui
notificationHolder.Name = "Frame"
notificationHolder.AnchorPoint = Vector2.new(1,1)
notificationHolder.Position = UDim2.new(1,0,1,0)
notificationHolder.Size = UDim2.new(0.125,0,1,0)
notificationHolder.BackgroundTransparency = 1

local module = {}

function module:new(t)
    local mainFrame = Instance.new("Frame")
    mainFrame.Parent = notificationHolder
    mainFrame.Name = "Frame"
    mainFrame.AnchorPoint = Vector2.new(1,1)
    mainFrame.Position = UDim2.new(1,0,1,0)
    mainFrame.Size = UDim2.new(0,0,0.05,0)
    mainFrame.BackgroundColor = Color3.fromRGB(33,33,33)
    mainFrame.BorderSizePixel = 0
    
    ts:Create(mainFrame,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,0.05,0)}):Play()
end

return module

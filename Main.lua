local players = game:GetService("Players")
local player = players.LocalPlayer
local playergui = player.PlayerGui

local gui = Instance.new("ScreenGui")
gui.Parent = playergui
gui.ResetOnSpawn = false
gui.Name = "NotificationV2"

local module = {}

function module:new()
    local mainFrame = Instance.new("Frame")
    mainFrame.Parent = gui
    mainFrame.Name = "Frame"
    mainFrame.AnchorPoint = UDim.new(1,1)
    mainFrame.Position = UDim2.new(1,0,1,0)
    mainFrame.Size = UDim2.new(0,200,0,45)
end

return module

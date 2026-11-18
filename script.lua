--[[
    Ragdoll Soccer - Delta Executor Cheat
    Version: 1.0
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Cheat configuration
local Config = {
    Speed = 32,
    Jump = 100,
    InfiniteHealth = true,
    AutoHeal = true,
}

-- Apply cheats
humanoid.WalkSpeed = Config.Speed
humanoid.JumpPower = Config.Jump
humanoid.Health = math.huge

-- Keep health infinite
task.spawn(function()
    while true do
        if Config.InfiniteHealth and humanoid.Health < 100 then
            humanoid.Health = math.huge
        end
        task.wait(0.1)
    end
end)

print("=== Ragdoll Soccer Cheat ===")
print("Speed: " .. Config.Speed)
print("Jump: " .. Config.Jump)
print("Health: Infinite")
print("==========================")
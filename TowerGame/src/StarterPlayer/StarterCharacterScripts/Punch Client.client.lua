local UserInputService = game:GetService("UserInputService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local Root = character:WaitForChild("HumanoidRootPart")

local Animation = character:WaitForChild("Humanoid"):LoadAnimation(script:WaitForChild("Animation"))

--//Settings

local Damage = 10
local Debounce = 0
local Keybind = Enum.UserInputType.MouseButton1
local CanPunch = true

UserInputService.InputBegan:Connect(function(input,busy)
	if input.UserInputType == Keybind and not busy then
		if CanPunch == true then
			CanPunch = false
			Animation:Play()
			Animation.Looped = false
			game.ReplicatedStorage.Remotes.Punch:FireServer(Damage)
			wait(Debounce)
			CanPunch = true
		end
	end
end)
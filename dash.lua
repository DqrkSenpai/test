local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local debounce = false

uis.InputBegan:Connect(function(key, processed)
  if debounce or processed then
		return
	end

	if key.KeyCode == Enum.KeyCode.Q then
		debounce = true
		humanoid.WalkSpeed += 8
		task.wait(0.5)
		humanoid.WalkSpeed -= 8
	end

	task.wait(1.5)
	debounce = false
end)

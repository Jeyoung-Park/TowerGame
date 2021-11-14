game.ReplicatedStorage.Remotes.Punch.OnServerEvent:Connect(function(player, damage)
	
	for i, target in pairs(game.Workspace:GetDescendants()) do
		if target:IsA("Humanoid") and target.Parent.Name ~= player.Name then
			if (target.Parent.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position) .magnitude < 5 then
				target.Health -= damage
			end
		end
	end
end)
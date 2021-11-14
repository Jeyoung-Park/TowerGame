local Debounce = false

script.Parent.Touched:Connect(function(Hit)
	if Hit.Parent:FindFisrtChild("Humanoid") then
		
		if Debounce == false then
			Debounce = true
			
			local Player = game.Players:GetPlayerFromCharacter(Hit.Parent)
			Player.leaderstats.Exp.Value += 10
			wait(1)
			Debounce = false
		end
	end
end)
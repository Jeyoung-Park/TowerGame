game.Players.PlayerAdded:Connect(function(Player)
	
	--leaderstats--
	
	local leaderstats = Instance.new("Folder", Player)
	leaderstats.Name = "leaderstats"
	
	local Level = Instance.new("NumberValue", leaderstats)
	Level.Name = "Level"
	Level.Value = 1
	
	local Exp = Instance.new("NumberValue", leaderstats)
	Exp.Name = "Exp"
	Exp.Value = 0
	
	local RequiredExp = Instance.new("NumberValue", Player)
	RequiredExp.Name = "RequiredExp"
	RequiredExp.Value = Level.Value * 100
	
	--Level up & exp --
	
	Exp.Changed:Connect(function(Changed)
		if Exp.Value >= RequiredExp.Value then
			Exp.Value = 0
			
			Level.Value += 1
			RequiredExp.Value = Level.Value *100
		end

	end)
	
end)
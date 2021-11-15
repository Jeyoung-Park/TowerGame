script.Parent.Touched:Connect(function(partHit)
	local Humanoid = partHit.Parent:FindFirstChild("Humanoid")
	if Humanoid then
		Humanoid:TakeDamage(10)
		script.Parent:Destroy()
	end
end)
--local Debounce = false

--_G.towerHealth=100

--script.Parent.Touched:Connect(function(Hit)
--	if Hit.Parent:FindFisrtChild("Humanoid") then

--		if Debounce == false then
--			Debounce = true
--			_G.towerHealth=_G.towerHealth-1
--			wait(1)
--			Debounce = false
--		end
--	end
--end)

--local Part= script.Parent
--local Rep = game:GetService("ReplicatedStorage")
--Rep:WaitForChild("DmgEvent").Event:Connect(function(prt, dmg)
--	if prt==Part then
--		prt.Health.Value=prt.Health.Value-dmg-1
--	end
--end)
--game.RunService.Stepped:Connect(function()
--	if Part.Health.Value < 1 then
--		Part:Destroy()
--	end
--end)


--script.Parent.Touched:Connect(function(plr)
--	health.Value=health.Value-decrease
--end)



--local Tower=script.Parent
--health = script.Parent.health
--decrease=10



--health.Changed:Connect(function()
--	if health.Value < 0 then
--		Tower:Destroy()
--		return 
--	end
--	script.Parent.BillboardGui.TextLabel.Text = "Health: "..health.Value.."/100"
--end)
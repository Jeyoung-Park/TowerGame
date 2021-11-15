local turret=script.Parent
local target=nil
local Bullet=game.ReplicatedStorage.Bullet

local bulletSpeed=100
local fireRate=0.5
local maxDistance=1000

while wait(fireRate) do
	for i, player in pairs(game.Workspace:GetChildren()) do
		if player:FindFirstChild("Humanoid") then
			target=player:FindFirstChild("Humanoid")
		end
	end
	
	if target and target.Health > 0 and (target.Parent.HumanoidRootPart.Position-turret.Position).Magnitude < maxDistance then
		target=target.Parent.HumanoidRootPart
		turret.CFrame=CFrame.new(turret.Position,target.Position)
		local newBullet = Bullet:Clone()
		newBullet.Parent = workspace
		newBullet.Position = turret.Position
		newBullet.Velocity = turret.CFrame.LookVector * bulletSpeed
	end
end
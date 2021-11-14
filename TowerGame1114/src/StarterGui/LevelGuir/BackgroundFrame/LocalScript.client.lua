local Player = game.Players.LocalPlayer

local Exp = Player.leaderstats.Exp
local RequiredExp = Player.RequiredExp

Exp.Changed:Connect(function(Changed)
	if Changed then
		script.Parent.Expbar.TweenSize(UDim2.new(Exp.Value/RequiredExp.Value, 0,1,0))
	end
end)

while wait() do
	script.Parent.ExpLabel.Text = Exp.Value.."/" ..RequiredExp.Value
end
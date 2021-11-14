local Player = game.Players.LocalPlayer

while wait() do
	script.Parent.Text = "Level : " ..Player.leaderstats.Level.Value
end
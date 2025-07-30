local a = Instance.new("TextButton")
a.Name = "O"
a.Parent = game.CoreGui
a.AnchorPoint = Vector2.new(0, 0.5)
a.Position = UDim2.new(0, 10, 0.5, 0)
a.Size = UDim2.new(0, 100, 0, 35)
a.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
a.TextColor3 = Color3.fromRGB(255, 255, 255)
a.Font = Enum.Font.GothamBold
a.TextSize = 16
a.Text = "Toggle"
a.BorderSizePixel = 0
a.BackgroundTransparency = 0.1

local b = true
a.MouseButton1Click:Connect(function()
	b = not b
	pcall(function()
		local c = require(game.CoreGui:FindFirstChild("Orion") or game:GetService("CoreGui"):FindFirstChild("Orion"))
		c:Toggle(b)
	end)
end)

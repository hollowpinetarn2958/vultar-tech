--!strict
--!native
--!optimize 2

local Gradients = require(script.Parent.Gradients)

return {
	Default = {
		name = "Default",
		imageId = "",
		visible = true,
		textColor = Color3.fromRGB(255, 255, 255),
		purchaseGradient = Gradients.Default,
	},

	Vex = {
		name = "Vex",
		imageId = "rbxassetid://94577033925642",
		season = "3",
		isNew = true,
		textColor = Color3.fromRGB(255, 255, 255),
		purchaseGradient = Gradients.Vex,
		visible = true,
	},

	Freeze = {
		name = "Freeze",
		imageId = "rbxassetid://93932951856854",
		season = "3",
		isNew = true,
		textColor = Color3.fromRGB(255, 255, 255),
		purchaseGradient = Gradients.Freeze,
		visible = true,
	},

	Toxic = {
		name = "Toxic",
		imageId = "rbxassetid://138636472807093",
		season = "2",
		isNew = true,
		textColor = Color3.fromRGB(0, 255, 80),
		purchaseGradient = Gradients.Toxic,
		visible = true,
	},
}

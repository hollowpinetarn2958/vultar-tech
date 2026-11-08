--!nonstrict
--!native
--!optimize 2

local DEV_IDS: { [number]: boolean } = {}

return {
	{
		id = "Freeze_ChatGradient",
		name = "Freeze",
		category = "ChatGradient",
		gamepassIds = { 1931220905 },
		purchaseGamepassId = 0,
		visible = false,
		gradientColors = {
			Color3.fromRGB(255, 255, 255),
			Color3.fromRGB(200, 230, 255),
			Color3.fromRGB(140, 200, 255),
			Color3.fromRGB(100, 180, 240),
			Color3.fromRGB(140, 200, 255),
			Color3.fromRGB(200, 230, 255),
			Color3.fromRGB(255, 255, 255),
		},
		gradientSpeed = 0.3,
		customCheck = function(player: Player)
			return DEV_IDS[player.UserId] == true
		end,
	},

	{
		id = "Toxic_ChatGradient",
		name = "Toxic",
		category = "ChatGradient",
		gamepassIds = { 1763970361 },
		purchaseGamepassId = 0,
		visible = false,
		gradientColors = {
			Color3.fromRGB(140, 255, 170),
			Color3.fromRGB(0, 180, 70),
			Color3.fromRGB(0, 40, 15),
			Color3.fromRGB(100, 240, 130),
			Color3.fromRGB(0, 40, 15),
			Color3.fromRGB(0, 180, 70),
			Color3.fromRGB(140, 255, 170),
		},
		gradientSpeed = 0.35,
	},

	{
		id = "Vex_ChatGradient",
		name = "Vex",
		category = "ChatGradient",
		gamepassIds = { 1870445094 },
		purchaseGamepassId = 0,
		visible = false,
		gradientColors = {
			Color3.fromRGB(255, 130, 130),
			Color3.fromRGB(225, 35, 35),
			Color3.fromRGB(70, 0, 8),
			Color3.fromRGB(255, 80, 80),
			Color3.fromRGB(70, 0, 8),
			Color3.fromRGB(225, 35, 35),
			Color3.fromRGB(255, 130, 130),
		},
		gradientSpeed = 0.35,
	},
}

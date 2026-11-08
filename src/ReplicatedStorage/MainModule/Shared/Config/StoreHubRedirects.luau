--!strict
--!native
--!optimize 2

export type StoreHubKey = "StoreHub1" | "StoreHub2" | "StoreHub3"

export type StoreHubConfig = {
	key: StoreHubKey,
	displayName: string,
	placeId: number,
}

local StoreHubRedirects = {}

StoreHubRedirects.Hubs = {
	StoreHub1 = {
		key = "StoreHub1",
		displayName = "Vultarian Military Reserve Store Hub 1",
		placeId = 80704215497255,
	},
	StoreHub2 = {
		key = "StoreHub2",
		displayName = "Vultarian Military Reserve Store Hub 2",
		placeId = 87705431196007,
	},
	StoreHub3 = {
		key = "StoreHub3",
		displayName = "Vultarian Military Reserve Store Hub 3",
		placeId = 114787625554598,
	},
} :: { [StoreHubKey]: StoreHubConfig }

StoreHubRedirects.GamepassToHub = {
	-- Store Hub 3
	[1775680713] = "StoreHub3", -- TOXIC Skin
	[1777664253] = "StoreHub3", -- TOXIC Player Card
	[1763970361] = "StoreHub3", -- TOXIC Bundle
	[1873048751] = "StoreHub3", -- Vex Skin
	[1870713038] = "StoreHub3", -- Vex Player Card
	[1870445094] = "StoreHub3", -- Vex Bundle
	[1931220905] = "StoreHub3", -- Freeze Bundle
	[1930998900] = "StoreHub3", -- Freeze Skin
	[1933394265] = "StoreHub3", -- Freeze Player Card
} :: { [number]: StoreHubKey }

function StoreHubRedirects.getHubForGamepass(gamepassId: number): StoreHubConfig?
	local hubKey = StoreHubRedirects.GamepassToHub[gamepassId]
	if not hubKey then
		return nil
	end

	return StoreHubRedirects.Hubs[hubKey]
end

return StoreHubRedirects

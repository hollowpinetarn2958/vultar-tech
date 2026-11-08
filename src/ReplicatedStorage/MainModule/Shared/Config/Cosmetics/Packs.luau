--!strict
--!native
--!optimize 2

local Collections = require(script.Parent.Collections)

export type PackItem = {
	id: string,
	category: "GunSkin" | "PlayerCard",
}

export type PackConfig = {
	id: string,
	name: string,
	collection: string,
	items: { PackItem },
	imageId: string,
	gamepassId: number,
	isFeatured: boolean?,
}

local Packs: { PackConfig } = {
	{
		id = "Freeze_Pack",
		name = "Freeze",
		collection = "Freeze",
		items = {
			{ id = "Freeze", category = "GunSkin" },
			{ id = "Freeze_PlayerCard", category = "PlayerCard" },
		},
		imageId = Collections.Freeze.imageId,
		gamepassId = 1931220905,
		isFeatured = true,
	},

	{
		id = "Vex_Pack",
		name = "Vex Pack",
		collection = "Vex",
		items = {
			{ id = "Vex", category = "GunSkin" },
			{ id = "Vex_PlayerCard", category = "PlayerCard" },
		},
		imageId = Collections.Vex.imageId,
		gamepassId = 1870445094,
		isFeatured = true,
	},

	{
		id = "Toxic_Pack",
		name = "Toxic Pack",
		collection = "Toxic",
		items = {
			{ id = "Toxic", category = "GunSkin" },
			{ id = "Toxic_PlayerCard", category = "PlayerCard" },
		},
		imageId = Collections.Toxic.imageId,
		gamepassId = 1763970361,
		isFeatured = true,
	},
}

local packsById: { [string]: PackConfig } = {}
local packsByCollection: { [string]: PackConfig } = {}
local packsByGamepassId: { [number]: PackConfig } = {}
local featuredPacks: { PackConfig } = {}

for _, pack in Packs do
	packsById[pack.id] = pack
	packsByCollection[pack.collection] = pack
	if pack.gamepassId > 0 then
		packsByGamepassId[pack.gamepassId] = pack
	end
	if pack.isFeatured then
		table.insert(featuredPacks, pack)
	end
end

local PacksModule = {}

function PacksModule.getAllPacks(): { PackConfig }
	return Packs
end

function PacksModule.getPackById(id: string): PackConfig?
	return packsById[id]
end

function PacksModule.getPackByCollection(collection: string): PackConfig?
	return packsByCollection[collection]
end

function PacksModule.getFeaturedPacks(): { PackConfig }
	return featuredPacks
end

function PacksModule.getPackByGamepassId(gamepassId: number): PackConfig?
	return packsByGamepassId[gamepassId]
end

return PacksModule

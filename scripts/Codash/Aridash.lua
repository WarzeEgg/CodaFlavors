local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Aridash",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Aridash"},
			textCharacterSelectionMessage = { text = "Aridash mode!\nWeak Dagger &\nInfinite Dash" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Codash/AridashClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Codash/AridashBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Codash/AridashBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponCodash","CodaFlavors_SpellDashda","Bomb","CharmNazar","MiscPotion"},
            },
            inventoryCursedSlots = {
                spell = true
            },
            inventoryBannedItemTypes = {
                types = {
                }
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Codash/AridashHead.png",
            },
        },
    },
}
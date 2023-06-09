local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Pushria",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Pushria"},
            CodaFlavors_menu={
                order = 11,
                explanation = "Aria with Shove Shield"
            },
			textCharacterSelectionMessage = { text = "Pushria mode!\nCrush enemies obstructing your path!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Shoveda/PushriaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Shoveda/PushriaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/PushriaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Shoveda/PushriaClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_ShovedaShield","Bomb3","CharmNazar","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    shield = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                }
            },
            traitStoryBosses = {
                bosses = {}
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "It only takes a little push",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Pushria.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/PushriaHead.png",
            },
        },
    },
}
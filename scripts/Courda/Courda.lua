local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Courda",
    template=customEntities.template.player(7),
    components = {
        {
            DynChar_dynamicCharacter = {
                slotMirrors = {},
                slotOffsets = {
                    action = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    base = { -1, 4, -1, 4, -1, 4, -1, 4 },
                    body = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    bomb = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    feet = { -0.5, 3, -0.5, 3, -0.5, 3, -0.5, 3 },
                    head = { -0.5, -1, -0.5, 1, -0.5, 3, -0.5, 1 },
                    hud = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    misc = { -0.5, 0, -0.5, 2, -0.5, 4, -0.5, 2 },
                    ring = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    shovel = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    spell = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    torch = { -2.5, 2, -3.5, 2, -4.5, 1, -2.5, 1 },
                    weapon = { 1.5, 2, 3.5, 2, 4.5, 1, 2.5, 2 }
                }
            },
            friendlyName={name="Courda"},
            CodaFlavors_menu={
                order = 120,
                explanation = "Coda with Strong Courage"
            },
			textCharacterSelectionMessage = { text = "Courda mode!\nCourage by heart!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Courda/CourdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/CourdaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Courda/CourdaClone.png",
            },
            initialEquipment={
                items={"CodaFlavors_CourdaShovel","WeaponDagger","Bomb","CharmNazar","CodaFlavors_CourdaRing"},
            },
            inventoryCursedSlots = {
                slots = {
                    shovel = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingRegeneration = itemBan.Type.FULL,
                }
            },
            CodaFlavors_shovedaCoinSuppress = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Fearless",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Courda.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/CourdaHead.png",
            },
        },
    },
}
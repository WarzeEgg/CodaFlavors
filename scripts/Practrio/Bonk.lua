local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Bonk",
    template=customEntities.template.player(5),
    components = {
        {
            friendlyName={name="Bonk"},
			textCharacterSelectionMessage = { text = "Bonk mode!\nPractice for Coda\nMonk + Bolt" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Practrio/BonkClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Practrio/BonkBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/BonkBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBlood","WeaponSpear","Bomb","CharmNazar"},
            },
            rhythmSubdivision = {
                factor = 2
            },
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/BonkHead.png",
            },
        },
    },
}
local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local ActionItem = require "necro.game.item.ActionItem"

customEntities.extend {
    name="Wizolt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Wizolt"},
            CodaFlavors_menu={
                order = 32,
                explanation = "Bolt with Only Spells"
            },
			textCharacterSelectionMessage = { text = "Wizolt mode!\nUse spells only\nto defeat enemies!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Spellda/WizoltClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Spellda/WizoltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Spellda/WizoltBody.png",
            },
            initialEquipment={
                items={"ShovelBasic","BagHolding","CodaFlavors_SpelldaFireball","CodaFlavors_SpelldaPulse","CodaFlavors_SpelldaFreeze","CodaFlavors_SpelldaCharm","Bomb3","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true;
                    spell = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    ArmorGi = itemBan.Type.FULL,
                    FeetBootsStrength = itemBan.Type.FULL,
                    HeadSpikedEars = itemBan.Type.FULL,
                    HeadSunglasses = itemBan.Type.FULL,
                    HeadGlassJaw = itemBan.Type.FULL,
                    CharmRisk = itemBan.Type.FULL,
                    CharmStrength = itemBan.Type.FULL,
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    RingWar = itemBan.Type.FULL,
                    RingFrost = itemBan.Type.FULL,
                    RingCourage = itemBan.Type.FULL,
                    RingPain = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL,
                    SpellFireball = itemBan.Type.FULL,
                    SpellPulse = itemBan.Type.FULL,
                    SpellFreezeEnemies = itemBan.Type.FULL,
                    Sync_SpellCharm = itemBan.Type.FULL,
                    BagHolding = itemBan.Type.GENERATION_ALL,
                    Holster = itemBan.Type.FULL,
                    HudBackpack = itemBan.Type.FULL
                }
            },
            itemBanWeaponlocked = {},
            shrineBanWeaponlocked = {},
            CodaFlavors_spelldaThrowSlot = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Pulsating Heart",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Wizolt.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Spellda/WizoltHead.png",
            },
        },
    },
}
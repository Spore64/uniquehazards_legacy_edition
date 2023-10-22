local Spikes = RegisterMod("uniquehazards", 1)
local game = Game()

local Mod = {}

local revelation = {
	Floor = nil
}

function Mod:onNewStage()

	-- Revelations compatiblity 
	revelation.Floor = false
	if StageAPI 
	and REVEL 
	and REVEL.STAGE 
	and REVEL.STAGE.Tomb
	and REVEL.STAGE.Tomb:IsStage() then
		revelation.Floor = true
	end 
end
Spikes:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.onNewStage)


function Mod:onEntitySpawn(entity)

	local room = game:GetRoom()
	local backdrop = room:GetBackdropType()
	local sprite = entity:GetSprite()
	local data = entity:GetData()

	local variant = Isaac.GetEntityVariantByName("Poky")
	local variantTwo = Isaac.GetEntityVariantByName("Slide")


	-- if entity.Variant == variant then	-- Poky
	if entity.Variant == 0 then	-- Poky

		-- check if the enemy already has the different sprite
		if data.Changed == nil then
			data.Changed = true

			-- check the current stage
			if backdrop == 1 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 2 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_cellar.png")
				sprite:LoadGraphics()

			elseif backdrop == 3 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_burning.png")
				sprite:LoadGraphics()

			
			elseif backdrop == 4 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 5 then
				if not (revelation.Floor == true) then	-- Revelations compatiblity
					-- replace the spritesheet
					sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_catacombs.png")
					sprite:LoadGraphics()
				end

			elseif backdrop == 6 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_flooded.png")
				sprite:LoadGraphics()

			elseif backdrop == 7 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_depths.png")
				sprite:LoadGraphics()

			elseif backdrop == 8 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_necropolis.png")
				sprite:LoadGraphics()

			elseif backdrop == 9 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_dank.png")
				sprite:LoadGraphics()

			elseif backdrop == 10 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_womb.png")
				sprite:LoadGraphics()

			elseif backdrop == 11 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_utero.png")
				sprite:LoadGraphics()

			elseif backdrop == 12 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_scarred.png")
				sprite:LoadGraphics()

			elseif backdrop == 13 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_bluewomb.png")
				sprite:LoadGraphics()

			elseif backdrop == 14 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_sheol.png")
				sprite:LoadGraphics()

			elseif backdrop == 15 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_cathedral.png")
				sprite:LoadGraphics()

			elseif backdrop == 16 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_darkroom.png")
				sprite:LoadGraphics()

			elseif backdrop == 17 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_chest.png")
				sprite:LoadGraphics()

			-- separate rooms

			elseif backdrop == 18 then	-- mega satan
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_darkroom.png")
				sprite:LoadGraphics()

			elseif backdrop == 19 then	-- library
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_shop.png")
				sprite:LoadGraphics()

			elseif backdrop == 20 then	-- shop
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_shop.png")
				sprite:LoadGraphics()
			
			elseif backdrop == 21 then	-- isaac's room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 22 then	-- barren room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_cellar.png")
				sprite:LoadGraphics()

			elseif backdrop == 23 then	-- secret room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_depths.png")
				sprite:LoadGraphics()

			elseif backdrop == 24 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 25 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 26 then	-- error room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 27 then	-- blue womb secret room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_bluewomb.png")
				sprite:LoadGraphics()

			elseif backdrop == 28 then	-- ultra greed shop
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_pokey_shop.png")
				sprite:LoadGraphics()
			end
		end

	elseif entity.Variant == 1 then	-- Slide

		-- check if the enemy already has the different sprite
		if data.Changed == nil then
			data.Changed = true

			-- check the current backdrop
			if backdrop == 1 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 2 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_cellar.png")
				sprite:LoadGraphics()

			elseif backdrop == 3 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_burning.png")
				sprite:LoadGraphics()
			
			elseif backdrop == 4 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 5 then
				if not (revelation.Floor == true) then	-- Revelations compatiblity
					-- replace the spritesheet
					sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_catacombs.png")
					sprite:LoadGraphics()
				end

			elseif backdrop == 6 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_flooded.png")
				sprite:LoadGraphics()

			elseif backdrop == 7 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_depths.png")
				sprite:LoadGraphics()

			elseif backdrop == 8 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_necropolis.png")
				sprite:LoadGraphics()

			elseif backdrop == 9 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_dank.png")
				sprite:LoadGraphics()

			elseif backdrop == 10 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_womb.png")
				sprite:LoadGraphics()

			elseif backdrop == 11 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_utero.png")
				sprite:LoadGraphics()

			elseif backdrop == 12 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_scarred.png")
				sprite:LoadGraphics()

			elseif backdrop == 13 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_bluewomb.png")
				sprite:LoadGraphics()

			elseif backdrop == 14 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_sheol.png")
				sprite:LoadGraphics()

			elseif backdrop == 15 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_cathedral.png")
				sprite:LoadGraphics()

			elseif backdrop == 16 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_darkroom.png")
				sprite:LoadGraphics()

			elseif backdrop == 17 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_chest.png")
				sprite:LoadGraphics()

			-- separate rooms

			elseif backdrop == 18 then	-- mega satan
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_darkroom.png")
				sprite:LoadGraphics()

			elseif backdrop == 19 then	-- library
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_shop.png")
				sprite:LoadGraphics()

			elseif backdrop == 20 then	-- shop
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_shop.png")
				sprite:LoadGraphics()
			
			elseif backdrop == 21 then	-- isaac's room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 22 then	-- barren room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_cellar.png")
				sprite:LoadGraphics()

			elseif backdrop == 23 then	-- secret room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_depths.png")
				sprite:LoadGraphics()

			elseif backdrop == 24 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 25 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 26 then	-- error room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 27 then	-- blue womb secret room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_bluewomb.png")
				sprite:LoadGraphics()

			elseif backdrop == 28 then	-- ultra greed shop
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_slide_shop.png")
				sprite:LoadGraphics()
			end
		end
	end
end
Spikes:AddCallback(ModCallbacks.MC_POST_NPC_INIT, Mod.onEntitySpawn, EntityType.ENTITY_POKY)

function Mod:onWallHuggerSpawn(entity)

	local level = game:GetLevel()
	local room = game:GetRoom()
	local backdrop = room:GetBackdropType()
	local sprite = entity:GetSprite()
	local data = entity:GetData()

	local variant = Isaac.GetEntityVariantByName("Wall Hugger")
	

	if entity.Variant == 0 then
		print("Wall Hugger")

		-- check if the enemy already has the different sprite
		if data.Changed == nil then
			data.Changed = true

			-- check the current backdrop
			if backdrop == 1 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 2 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_cellar.png")
				sprite:LoadGraphics()

			elseif backdrop == 3 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_burning.png")
				sprite:LoadGraphics()

			elseif backdrop == 4 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 5 then
				if not (revelation.Floor == true) then	-- Revelations compatiblity
					-- replace the spritesheet
					sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_catacombs.png")
					sprite:LoadGraphics()
				end

			elseif backdrop == 6 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_flooded.png")
				sprite:LoadGraphics()

			elseif backdrop == 7 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_depths.png")
				sprite:LoadGraphics()

			elseif backdrop == 8 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_necropolis.png")
				sprite:LoadGraphics()

			elseif backdrop == 9 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_dank.png")
				sprite:LoadGraphics()

			elseif backdrop == 10 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_womb.png")
				sprite:LoadGraphics()

			elseif backdrop == 11 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_utero.png")
				sprite:LoadGraphics()

			elseif backdrop == 12 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_scarred.png")
				sprite:LoadGraphics()

			elseif backdrop == 13 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_bluewomb.png")
				sprite:LoadGraphics()

			elseif backdrop == 14 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_sheol.png")
				sprite:LoadGraphics()

			elseif backdrop == 15 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_cathedral.png")
				sprite:LoadGraphics()

			elseif backdrop == 16 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_darkroom.png")
				sprite:LoadGraphics()

			elseif backdrop == 17 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_chest.png")
				sprite:LoadGraphics()

			-- separate rooms

			elseif backdrop == 18 then	-- mega satan
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_darkroom.png")
				sprite:LoadGraphics()

			elseif backdrop == 19 then	-- library
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_shop.png")
				sprite:LoadGraphics()

			elseif backdrop == 20 then	-- shop

				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_shop.png")
				sprite:LoadGraphics()
			
			elseif backdrop == 21 then	-- isaac's room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 22 then	-- barren room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_cellar.png")
				sprite:LoadGraphics()

			elseif backdrop == 23 then	-- secret room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_depths.png")
				sprite:LoadGraphics()

			elseif backdrop == 24 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 25 then
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_caves.png")
				sprite:LoadGraphics()

			elseif backdrop == 26 then	-- error room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_basement.png")
				sprite:LoadGraphics()

			elseif backdrop == 27 then	-- blue womb secret room
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_bluewomb.png")
				sprite:LoadGraphics()

			elseif backdrop == 28 then	-- ultra greed shop
				-- replace the sprite/spritesheet
				sprite:ReplaceSpritesheet(0, "gfx/monsters/custom/monster_wall hugger_shop.png")
				sprite:LoadGraphics()
			end
		end
	end
end
Spikes:AddCallback(ModCallbacks.MC_POST_NPC_INIT, Mod.onWallHuggerSpawn, EntityType.ENTITY_WALL_HUGGER)


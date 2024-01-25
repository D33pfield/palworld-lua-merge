print("Mods Merge Loaded!\n")

NotifyOnNewObject("/Script/Pal.PalGameSetting", function(PalGameSetting)
	--- World Map Tweaks
    PalGameSetting.worldmapUIMaskClearSize = 80
	PalGameSetting.worldmapUIMaxMarker = 200

    --- Tech points tweaks
    PalGameSetting.technologyPointPerLevel = 17

    --- Flying stamina tweaks
    PalGameSetting.FlyHorizon_SP = 0
	PalGameSetting.FlyHorizon_Dash_SP = 0
	PalGameSetting.FlyHover_SP = 0
	PalGameSetting.FlyMaxHeight = 999999
	PalGameSetting.FlyVertical_SP = 0

    --- Carry weight tweaks
    PalGameSetting.DefaultMaxInventoryWeight = 1000
	PalGameSetting.AddMaxInventoryWeightPerStatusPoint = 260

    --- Glider tweaks
    PalGameSetting.GliderSP = 0.0

    --- Base range tweaks
    BaseCampAreaRange = 6500.0
    BaseCampPalFindWorkRange = 800.0
    BaseCampFoliageWorkableRange = 400.0
		
end)

--- F1 to "Pause" game
pause = Key.F1 -- Change F1 to whatever you want
enabled = false

RegisterKeyBind(pause, function()
	GameplayStatics = StaticFindObject("/Script/Engine.Default__GameplayStatics")
	local Player = FindFirstOf("PalPlayerCharacter")
	enabled = not enabled
	if enabled then
		GameplayStatics:SetGlobalTimeDilation(Player, 0.0)
	else
		GameplayStatics:SetGlobalTimeDilation(Player, 1.0)
	end
end)

--- F9 to hide HUD
RegisterKeyBind(Key.F9, {}, function()
    local hud = FindFirstOf("BP_PalHUD_InGame_C")
    
    if hud:IsValid() then
        hud.bShowHUD = not hud.bShowHUD
    end
end)

-- How much to multiple the tools and weapons durability by
duraMult = 5

-- Fixed value to set armour durability to
armourAmount = 20000

-- Tools Duribility Tweak
RegisterKeyBind(Key.H, function()
	print("Durability multiplier is " ..tostring(duraMult))
    local items = FindAllOf("PalDynamicWeaponItemDataBase")
    if items then
        for _, item in ipairs(items) do
            local name = item.StaticId:ToString()
            if string.find(name, "Pickaxe") or string.find(name, "Axe") or string.find(name, "FishingRod") or string.find(name, "MeatCutterKnife") or string.find(name, "Torch") then
                if item.OldDurability then
                    print("Old durability - " .. tostring(item.OldDurability) .. " - ".. name .. "")
                end
                if item.MaxDurability then
                    print("Max durability - " .. tostring(item.MaxDurability) .. " - ".. name .. "")
                    if item.MaxDurability <= item.OldDurability then
                    	item.MaxDurability = item.OldDurability * duraMult
                    end
                    print("New max durability - " .. tostring(item.MaxDurability) .. " - ".. name .. "")
                end
                if item.Durability then
                    print("Durability - " .. tostring(item.Durability) .. " - ".. name .. "")
                    if item.Durability <= item.OldDurability then
                    	item.Durability = (item.Durability / (item.MaxDurability / duraMult)) * item.MaxDurability
                    end
                    print("New durability - " .. tostring(item.Durability) .. " - ".. name .. "")
                end
            end           
        end
    else
        print("No tools found.\n")
    end
end)

-- Weapons Duribility Tweak
RegisterKeyBind(Key.J, function()
	print("Durability multiplier is " ..tostring(duraMult))
    local items = FindAllOf("PalDynamicWeaponItemDataBase")
    if items then
        for _, item in ipairs(items) do
            local name = item.StaticId:ToString()
            if string.find(name, "Spear") or string.find(name, "Bow") or string.find(name, "Bat") or string.find(name, "ElecBaton") or string.find(name, "DoubleBarrelShotgun") or string.find(name, "GrapplingGun") or string.find(name, "HandGun") or string.find(name, "HomingSphereLauncher") or string.find(name, "Launcher") or string.find(name, "MakeshiftHandgun") or string.find(name, "Musket") or string.find(name, "SingleShotRifle") or string.find(name, "Spear") or string.find(name, "SphereLauncher") or string.find(name, "AssaultRifle") or string.find(name, "PumpActionShotgun") or string.find(name, "WeakerBow") or string.find(name, "LaserRifle") or string.find(name, "RecurveBow") or string.find(name, "PV_AssaultRifle") or string.find(name, "SniperRifle") then
                if item.OldDurability then
                    print("Old durability - " .. tostring(item.OldDurability) .. " - ".. name .. "")
                end
                if item.MaxDurability then
                    print("Max durability - " .. tostring(item.MaxDurability) .. " - ".. name .. "")
                    if item.MaxDurability <= item.OldDurability then
                    	item.MaxDurability = item.OldDurability * duraMult
                    end
                    print("New max durability - " .. tostring(item.MaxDurability) .. " - ".. name .. "")
                end
                if item.Durability then
                    print("Durability - " .. tostring(item.Durability) .. " - ".. name .. "")
                    if item.Durability <= item.OldDurability then
                    	item.Durability = (item.Durability / (item.MaxDurability / duraMult)) * item.MaxDurability
                    end
                    print("New durability - " .. tostring(item.Durability) .. " - ".. name .. "")
                end
            end           
        end
    else
        print("No weapons found.\n")
    end
end)

-- Armour Duribility Tweaks
RegisterKeyBind(Key.K, function()
    print("Durability multiplier is " ..tostring(duraMult))
    local items = FindAllOf("PalDynamicArmorItemDataBase")
    if items then
        for _, item in ipairs(items) do
            local name = item.StaticId:ToString()
            if string.find(name, "ClothArmor") or string.find(name, "CopperArmor") or string.find(name, "CopperHelmet") or string.find(name, "FurArmor") or string.find(name, "FurHelmet") or string.find(name, "IronArmor") or string.find(name, "IronHelmet") or string.find(name, "Shield") or string.find(name, "StealArmor") or string.find(name, "StealHelmet") or string.find(name, "ClothHat") or string.find(name, "LightzHelmet") or string.find(name, "Head") then
                if item.OldDurability then
                    print("Old durability - " .. tostring(item.OldDurability) .. " - ".. name .. "")
                end
                if item.MaxDurability then
                    print("Max durability - " .. tostring(item.MaxDurability) .. " - ".. name .. "")
                    if item.MaxDurability < armourAmount then
                        oldDurabilityCustom = item.MaxDurability
                        item.MaxDurability = armourAmount
                        firstRun = 1
                    else 
                        firstRun = 0
                    end

                    print("New max durability - " .. tostring(item.MaxDurability) .. " - ".. name .. "")
                end
                if item.Durability then
                    print("Durability - " .. tostring(item.Durability) .. " - ".. name .. "")
                    if firstRun == 1 then
                        if item.Durability <= oldDurabilityCustom then
                            item.Durability = math.floor((item.Durability / oldDurabilityCustom) * item.MaxDurability)
                        end
                    end
                    print("New durability - " .. tostring(item.Durability) .. " - ".. name .. "")
                end
            end           
        end
    else
        print("No weapons found.\n")
    end
end)

----------------------------------------------------------------------------
---------------------------------- BOOSTERS --------------------------------
local god = false
local playerblipsbool = false
local goldenCores = false
local infiniteammo = false
local NoClipActive = false
local RelativeMode = Config.RelativeMode
local Speed = Config.Speed
local FollowCam = Config.FollowCam
local timer
local blipsList = {}

RegisterNetEvent("ncrp:noclip")
AddEventHandler("ncrp:noclip", function(x, y, z)
	NoClip()
end)

function GODmode()
    local player = PlayerPedId()
    if not god then

        TriggerEvent('vorp:TipRight', _U("switchedon"), 3000)
        SetEntityCanBeDamaged(player, false)
        SetEntityInvincible(player, true)
        SetPedConfigFlag(player, 2, true) -- no critical hits
        SetPedCanRagdoll(player, false)
        SetPedCanBeTargetted(player, false)
        Citizen.InvokeNative(0x5240864E847C691C, player, false) --set ped can be incapacitaded
        SetPlayerInvincible(player, true)
        Citizen.InvokeNative(0xFD6943B6DF77E449, player, false) -- set ped can be lassoed

        if Config.BoosterLogs.GodMode then -- if nil dont send
            TriggerServerEvent("vorp_admin:logs", Config.BoosterLogs.GodMode, _U("titlebooster"),
                _U("usedgod"))
        end
        god = true
    else

        TriggerEvent('vorp:TipRight', _U("switchedoff"), 3000)
        SetEntityCanBeDamaged(player, true)
        SetEntityInvincible(player, false)
        SetPedConfigFlag(player, 2, false)
        SetPedCanRagdoll(player, true)
        SetPedCanBeTargetted(player, true)
        Citizen.InvokeNative(0x5240864E847C691C, player, true)
        SetPlayerInvincible(PlayerId(), false)
        Citizen.InvokeNative(0xFD6943B6DF77E449, player, true)
        god = false
    end
end

function GoldenCores()
    local player = PlayerPedId()
    if not goldenCores then
        TriggerEvent('vorp:TipRight', _U("switchedon"), 3000)
        -- inner cores
        Citizen.InvokeNative(0xC6258F41D86676E0, player, 0, 100)
        Citizen.InvokeNative(0xC6258F41D86676E0, player, 1, 100)
        Citizen.InvokeNative(0xC6258F41D86676E0, player, 2, 100)

        --outter cores
        Citizen.InvokeNative(0x4AF5A4C7B9157D14, player, 0, 5000.0)
        Citizen.InvokeNative(0x4AF5A4C7B9157D14, player, 1, 5000.0)
        Citizen.InvokeNative(0x4AF5A4C7B9157D14, player, 2, 5000.0)

        Citizen.InvokeNative(0xF6A7C08DF2E28B28, player, 1, 5000.0)
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, player, 2, 5000.0)
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, player, 0, 5000.0)
        if Config.BoosterLogs.GoldenCores then
            TriggerServerEvent("vorp_admin:logs", Config.BoosterLogs.GoldenCores, _U("titlebooster"),
                _U("usedgoldcores"))
        end
        goldenCores = true
    else

        TriggerEvent('vorp:TipRight', _U("switchedoff"), 3000)
        --inner cores
        Citizen.InvokeNative(0xC6258F41D86676E0, player, 0, 100)
        Citizen.InvokeNative(0xC6258F41D86676E0, player, 1, 100)
        Citizen.InvokeNative(0xC6258F41D86676E0, player, 2, 100)

        --outter cores
        Citizen.InvokeNative(0x4AF5A4C7B9157D14, player, 0, 0.0)
        Citizen.InvokeNative(0x4AF5A4C7B9157D14, player, 1, 0.0)
        Citizen.InvokeNative(0x4AF5A4C7B9157D14, player, 2, 0.0)

        Citizen.InvokeNative(0xF6A7C08DF2E28B28, player, 1, 0.0)
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, player, 2, 0.0)
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, player, 0, 0.0)
        goldenCores = false
    end
end

function PlayerBlipsOn()
    local player = PlayerPedId()
    for _, i in ipairs(GetActivePlayers()) do
        blip = GetBlipFromEntity(GetPlayerPed(i))
        if not DoesBlipExist(blip) then
            Wait(10);
            coords = GetEntityCoords(GetPlayerPed(i), true, true)
            _blip = Citizen.InvokeNative(0x23F74C2FDA6E7C61, 1664425300, GetPlayerPed(i))
            playername = GetPlayerName(i)
            playernameid = GetPlayerServerId(i)
            Citizen.InvokeNative(0x74F74D3207ED525C, _blip, -1580514024, 1)
            Citizen.InvokeNative(0xD38744167B2FA257, _blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, _blip, ""..playername.." id: "..playernameid)
            table.insert(blipsList, _blip)
        end
    end
end

function PlayerBlipsOff()
    for _, i in ipairs(blipsList) do
            actualBlip = i
            RemoveBlip(actualBlip)
        table.remove(blipsList, i)
        Wait(1)
    end
end

function InfiAmmo()
    local player = PlayerPedId()
    local _, weaponHash = GetCurrentPedWeapon(player, false, 0, false)
    if not infiniteammo then

        infiniteammo = true
        local unarmed = -1569615261
        TriggerEvent("vorp:TipRight", _U("switchedon"), 3000)
        if weaponHash == unarmed then
            TriggerEvent("vorp:Tip", _U("noweapon"), 3000)
        else
            SetPedInfiniteAmmo(player, true, weaponHash)
            if Config.BoosterLogs.InfiniteAmmo then
                TriggerServerEvent("vorp_admin:logs", Config.BoosterLogs.InfiniteAmmo, _U("titlebooster")
                    , _U("usedinfinitammo"))
            end
        end
    else
        infiniteammo = false
        TriggerEvent("vorp:TipRight", _U("switchedoff"), 3000)
        SetPedInfiniteAmmo(player, false, weaponHash)
    end
end

function Boost()
    MenuData.CloseAll()



    local elements = {
        { label = _U("godMode"), value = 'god', desc = _U("godMode_desc") },
        { label = _U("noclipMode"), value = 'noclip',
            desc = "<span>" ..
                _U("move") .. "</span><br><span>" .. _U("speedMode") .. "</span><br>" .. _U("Cammode") .. "" },
        { label = _U("goldenCores"), value = 'goldcores', desc = _U("goldCores_desc") },
        { label = _U("infiniteammo"), value = 'infiniteammo', desc = _U("infammo_desc") },
        { label = _U("spawnwagon"), value = 'spawnwagon', desc = _U("spawnwagon_desc") },
        { label = _U("spawnhorse"), value = 'spawnhorse', desc = _U("spawnhorse_desc") },
        { label = _U("selfheal"), value = 'selfheal', desc = _U("selfheal_desc") },
        { label = _U("selfrevive"), value = 'selfrevive', desc = _U("selfrevive_desc") },
        { label = _U("togglevisibility"), value = 'togglevisibility', desc = _U("togglevisibility_desc") },
        { label = _U("playerblips"), value = 'playerblips', desc = _U("playerblips_desc") },

        --{ label = "players blip map", value = 'playerblip', desc = "show players blip on the map" }, todo
        --{ label = "players id", value = 'showid', desc = "show players id over head", }, todo
    }

    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title    = _U("MenuTitle"),
            subtext  = _U("Boosters"),
            align    = 'top-left',
            elements = elements,
            lastmenu = 'OpenMenu'
        },

        function(data)
            if data.current == "backup" then
                _G[data.trigger]()

            end
            if data.current.value == "god" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.Godmode")
                Wait(100)
                if AdminAllowed then
                    GODmode()
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "goldcores" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.Golden")
                Wait(100)
                if AdminAllowed then
                    GoldenCores()
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "playerblips" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", 'vorp.staff.PlayerBlips')
                Wait(100)
                if AdminAllowed then
                    if playerblipsbool then
                        PlayerBlipsOff()
                    else
                        PlayerBlipsOn()
                    end
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "noclip" then
                local player = PlayerPedId()
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.Noclip")
                Wait(100)
                if AdminAllowed then
                    NoClip()
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "infiniteammo" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.InfiniteAmmo")
                Wait(100)
                if AdminAllowed then
                    InfiAmmo()
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "selfrevive" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.SelfRevive")
                Wait(100)
                if AdminAllowed then
                    TriggerEvent('vorp:resurrectPlayer')

                    if Config.BoosterLogs.SelfRevive then
                        TriggerServerEvent("vorp_admin:logs",
                            Config.BoosterLogs.SelfRevive
                            , _U("titlebooster"), _U("usedrevive"))
                    end
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "selfheal" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.SelfHeal")
                Wait(100)
                if AdminAllowed then
                    if Config.BoosterLogs.SelfHeal then
                        TriggerServerEvent("vorp_admin:logs",
                            Config.BoosterLogs.SelfHeal
                            , _U("titlebooster"), _U("usedheal"))
                    end
                    TriggerEvent('vorp:heal')
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end

            elseif data.current.value == "togglevisibility" then
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.ToggleVisibility")
                Wait(100)
                if AdminAllowed then
                    if visible then 
                        SetEntityVisible(PlayerPedId(), false)
                        SetEntityCanBeDamaged(PlayerPedId(), false)
                        SetEntityInvincible(PlayerPedId(), true)
                        visible = false
                    else 
                        SetEntityVisible(PlayerPedId(), true)
                        SetEntityCanBeDamaged(PlayerPedId(), true)
                        SetEntityInvincible(PlayerPedId(), false)
                        visible = true
                    end
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            elseif data.current.value == "spawnhorse" then
                local player = PlayerPedId()
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.SpawHorse")
                Wait(100)
                if AdminAllowed then
                    local myInput = {
                        type = "enableinput", -- dont touch
                        inputType = "input",
                        button = _U("confirm"), -- button name
                        placeholder = _U("inserthashmodel"), --placeholdername
                        style = "block", --- dont touch
                        attributes = {
                            inputHeader = _U("spawnhorse"), -- header
                            type = "text", -- inputype text, number,date.etc if number comment out the pattern
                            pattern = "[A-Za-z0-9_ \\-]{5,60}", -- regular expression validated for only numbers "[0-9]", for letters only [A-Za-z]+   with charecter limit  [A-Za-z]{5,20}     with chareceter limit and numbers [A-Za-z0-9]{5,}
                            title = "wrong syntax", -- if input doesnt match show this message
                            style = "border-radius: 10px; backgRound-color: ; border:none;", -- style  the inptup
                        }
                    }
                    MenuData.CloseAll()
                    TriggerEvent("vorpinputs:advancedInput", json.encode(myInput), function(result)
                        local horse = result
                        local playerCoords = GetEntityCoords(player) + 1
                        if horse ~= "" then
                            RequestModel(horse)
                            while not HasModelLoaded(horse) do
                                Wait(10)
                            end
                            horse = CreatePed(horse, playerCoords.x, playerCoords.y, playerCoords.z, true, true, true)
                            Citizen.InvokeNative(0x77FF8D35EEC6BBC4, horse, 1, 0)
                            Citizen.InvokeNative(0x028F76B6E78246EB, player, horse, -1, true)
                            if Config.BoosterLogs.SelfSpawnHorse then
                                TriggerServerEvent("vorp_admin:logs",
                                    Config.BoosterLogs.SelfSpawnHorse
                                    , _U("titlebooster"), _U("spawned") .. horse)
                            end
                        else
                            TriggerEvent('vorp:TipRight', _U("advalue"), 3000)
                        end
                    end)
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end

            elseif data.current.value == "spawnwagon" then
                local player = PlayerPedId()
                TriggerServerEvent("vorp_admin:opneStaffMenu", "vorp.staff.SpawnWagon")
                Wait(100)
                if AdminAllowed then
                    local myInput = {
                        type = "enableinput", -- dont touch
                        inputType = "input",
                        button = _U("confirm"), -- button name
                        placeholder = _U("insertmodel"), --placeholdername
                        style = "block", --- dont touch
                        attributes = {
                            inputHeader = _U("SpawnWagon"), -- header
                            type = "text", -- inputype text, number,date.etc if number comment out the pattern
                            pattern = "[A-Za-z0-9_ \\-]{5,60}", -- regular expression validated for only numbers "[0-9]", for letters only [A-Za-z]+   with charecter limit  [A-Za-z]{5,20}     with chareceter limit and numbers [A-Za-z0-9]{5,}
                            title = "wrong syntax", -- if input doesnt match show this message
                            style = "border-radius: 10px; backgRound-color: ; border:none;", -- style  the inptup
                        }
                    }
                    MenuData.CloseAll()

                    TriggerEvent("vorpinputs:advancedInput", json.encode(myInput), function(result)
                        local wagon = result
                        local playerCoords = GetEntityCoords(player)

                        if wagon ~= "" then
                            RequestModel(wagon)
                            while not HasModelLoaded(wagon) do
                                Wait(10)
                            end

                            wagon = CreateVehicle(wagon, playerCoords.x, playerCoords.y, playerCoords.z, true, true, true)
                            Citizen.InvokeNative(0x77FF8D35EEC6BBC4, wagon, 1, 0)
                            SetPedIntoVehicle(player, wagon, -1)
                            if Config.BoosterLogs.SelfSpawnWagon then
                                TriggerServerEvent("vorp_admin:logs", Config.BoosterLogs.SelfSpawnWagon
                                    , _U("titlebooster"), _U("spawned") .. wagon)
                            end
                        else
                            TriggerEvent('vorp:TipRight', _U("advalue"), 3000)
                        end
                    end)
                else
                    TriggerEvent("vorp:TipRight", _U("noperms"), 4000)
                end
            end
        end,

        function(menu)
            menu.close()
        end)


end

function GetPedCrouchMovement(ped)
	return Citizen.InvokeNative(0xD5FE956C70FF370B, ped)
end

function SetPedCrouchMovement(ped, state, immediately)
	Citizen.InvokeNative(0x7DE9692C6F64CFE8, ped, state, immediately)
end

function PlayAnimation(anim)
	if not DoesAnimDictExist(anim.dict) then
		print("Invalid animation dictionary: " .. anim.dict)
		return
	end

	RequestAnimDict(anim.dict)

	while not HasAnimDictLoaded(anim.dict) do
		Citizen.Wait(0)
	end

	TaskPlayAnim(PlayerPedId(), anim.dict, anim.name, 4.0, 4.0, -1, 0, 0.0, false, false, false, "", false)

	RemoveAnimDict(anim.dict)
end

function GetAttackType(playerPed)
	local playerModel = GetEntityModel(playerPed)

	for _, attackType in ipairs(Config.AttackTypes) do
		for _, model in ipairs(attackType.models) do
			if playerModel == model then
				return attackType
			end
		end
	end
end

function ApplyAttackToTarget(attacker, target, attackType)
	if attackType.force > 0 then
		SetPedToRagdoll(target, 1000, 1000, 0, 0, 0, 0)
		SetEntityVelocity(target, GetEntityForwardVector(attacker) * attackType.force)
	end

	if attackType.damage > 0 then
		ApplyDamageToPed(target, attackType.damage, 1, -1, 0)
	end
end

function GetPlayerServerIdFromPed(ped)
	GetPlayers()
	for _, player in pairs(playerx) do
		if player.ped == ped then
			return player.serverId
		end
	end
end

function ToggleCrouch()
	local playerPed = PlayerPedId()

	SetPedCrouchMovement(playerPed, not GetPedCrouchMovement(playerPed), true)
end

function MakeEntityFaceEntity(entity1, entity2)
	local p1 = GetEntityCoords(entity1)
	local p2 = GetEntityCoords(entity2)

	local dx = p2.x - p1.x
	local dy = p2.y - p1.y

	local heading = GetHeadingFromVector_2d(dx, dy)

	SetEntityHeading(entity1, heading)
end

function GetClosestPed(playerPed, radius)
	local playerCoords = GetEntityCoords(playerPed)

	local itemset = CreateItemset(true)
	local size = Citizen.InvokeNative(0x59B57C4B06531E1E, playerCoords, radius, itemset, 1, Citizen.ResultAsInteger())

	local closestPed
	local minDist = radius

	if size > 0 then
		for i = 0, size - 1 do
			local ped = GetIndexedItemInItemset(i, itemset)

			if playerPed ~= ped and IsValidTarget(ped) then
				local pedCoords = GetEntityCoords(ped)
				local distance = #(playerCoords - pedCoords)

				if distance < minDist then
					closestPed = ped
					minDist = distance
				end
			end
		end
	end

	if IsItemsetValid(itemset) then
		DestroyItemset(itemset)
	end

	return closestPed
end
function IsPvpEnabled()
	return GetRelationshipBetweenGroups(`PLAYER`, `PLAYER`) == 5
end

function IsValidTarget(ped)
	return not IsPedDeadOrDying(ped) and not (IsPedAPlayer(ped) and not IsPvpEnabled())
end

function Attack()
	local playerPed = PlayerPedId()

	if IsPedDeadOrDying(playerPed) or IsPedRagdoll(playerPed) then
		return
	end

	local attackType = GetAttackType(playerPed)

	if attackType then
		local target = GetClosestPed(playerPed, attackType.radius)

		if target then
			IsAttacking = true

			MakeEntityFaceEntity(playerPed, target)

			PlayAnimation(attackType.animation)

			ApplyAttackToTarget(playerPed, target, attackType)

			if IsPedAPlayer(target) then
				TriggerServerEvent("fixanimals:attack", GetPlayerServerIdFromPed(target), -1)
			elseif NetworkGetEntityIsNetworked(target) and not NetworkHasControlOfEntity(target) then
				TriggerServerEvent("fixanimals:attack", -1, PedToNet(target))
			else
				ApplyAttackToTarget(playerPed, target, attackType)
			end

			SetTimeout(Config.AttackCooldown, function()
				IsAttacking = false
			end)
		end
	end
end

-- function DisableControls()
--     DisableControlAction(0, 0xB238FE0B, true) --disable controls here
--     DisableControlAction(0, 0x3C0A40F2, true) --disable controls here
-- end

function DrawText(text, x, y, centred)
    SetTextScale(0.35, 0.35)
    SetTextColor(255, 255, 255, 255)
    SetTextCentre(centred)
    SetTextDropshadow(1, 0, 0, 0, 200)
    SetTextFontForCurrentCommand(22)
    DisplayText(CreateVarString(10, "LITERAL_STRING", text), x, y)
end

function PerformRequest(hash)
    RequestModel(hash, 0)
    local bacon = 1
    while not Citizen.InvokeNative(0x1283B8B89DD5D1B6, hash) do
        Citizen.InvokeNative(0xFA28FE3A6246FC30, hash, 0)
        bacon = bacon + 1
        Citizen.Wait(0)
        if bacon >= 100 then break end
    end
end

local IsAnimal = false
local IsAttacking = false

function SetControlContext(pad, context)
	Citizen.InvokeNative(0x2804658EB7D8A50B, pad, context)
end

Citizen.CreateThread(function()
	local lastPed = 0
	while true do
		local ped = PlayerPedId()

		if ped ~= lastPed then
			if IsPedHuman(ped) then
				SetControlContext(2, 0)
				IsAnimal = false
			else
				SetPedConfigFlag(ped, 43, true)
				IsAnimal = true
			end

			lastPed = ped
		end
		Wait(1000)
	end
end)

local cooldown = false 

Citizen.CreateThread(function() 
	while true do 
		Citizen.Wait(10)
		if cooldown then
			Wait(Config.AttackCooldown)
			cooldown = false
		end
	end
end)

CreateThread(function()
	while true do
		if IsAnimal then
			-- Change control context
			SetControlContext(2, `OnMount`)

			-- Disable first person mode as an animal since the camera is glitchy and may cause crashes
			DisableFirstPersonCamThisFrame()

			-- Allow animals that can't normally attack to attack
			if not IsAttacking and IsControlJustPressed(0, `INPUT_ATTACK`) and not cooldown then
				cooldown = true
				Attack()
			end

			-- Toggle crouched movement
			if IsControlJustPressed(0, `INPUT_HORSE_MELEE`) then
				ToggleCrouch()
			end
		end

		Wait(10)
	end
end)

function NoClip()
	local ped = PlayerPedId()
	if not NoClipActive then
		NoClipActive = true
		SetEntityVisible(ped, false)
		SetPlayerInvincible(ped, true)
		FreezeEntityPosition(ped, true)
		TriggerServerEvent("Log", systemlogs, "No Clip", GetPlayerName(PlayerId()).." turned No Clip on.", 65535)
	else
		NoClipActive = false
		SetEntityVisible(ped, true)
		SetPlayerInvincible(ped, false)
		FreezeEntityPosition(ped, false)
		TriggerServerEvent("Log", systemlogs, "No Clip", GetPlayerName(PlayerId()).." turned No Clip off.", 65535)
	end
end

Citizen.CreateThread(function()
	LoadSettings()
	while true do
		Citizen.Wait(0)
		if NoClipActive then
			-- Disable all controls except a few while in noclip mode
			DisableAllControlActions(0)
			EnableControlAction(0, 0x4A903C11) -- FrontendPauseAlternate
			EnableControlAction(0, 0x9720fcee) -- MpTextChatAll
			EnableControlAction(0, 0xA987235F) -- LookLr
			EnableControlAction(0, 0xD2047988) -- LookUd
			EnableControlAction(0, 0x3D99EEC6) -- HorseGunLr
			EnableControlAction(0, 0xBFF476F9) -- HorseGunUd
			EnableControlAction(0, 0xCF8A4ECA) -- RevealHud
			EnableControlAction(0, 0x4AF4D473) -- Del

			DisableFirstPersonCamThisFrame()

			-- Get the entity we want to control in noclip mode
			local entity = GetNoClipTarget()

			FreezeEntityPosition(entity, true)

			-- Get the position and heading of the entity
			local x, y, z = table.unpack(GetEntityCoords(entity))
			local h = TranslateHeading(entity, GetEntityHeading(entity))

			-- Cap the speed between MinSpeed and MaxSpeed
			if Speed > Config.MaxSpeed then
				SetSpeed(Config.MaxSpeed)
			end
			if Speed < Config.MinSpeed then
				SetSpeed(Config.MinSpeed)
			end

			-- Print the current noclip speed on screen
			DrawText(string.format('NoClip Speed: %.1f', Speed), 0.5, 0.90, true)

			-- Change noclip control mode
			if CheckControls(IsDisabledControlJustPressed, 0, Config.ToggleModeControl) then
				ToggleRelativeMode()
			end

			-- Increase/decrease speed
			if CheckControls(IsDisabledControlPressed, 0, Config.IncreaseSpeedControl) then
				SetSpeed(Speed + Config.SpeedIncrement)
			end
			if CheckControls(IsDisabledControlPressed, 0, Config.DecreaseSpeedControl) then
				SetSpeed(Speed - Config.SpeedIncrement)
			end

			-- Move up/down
			if CheckControls(IsDisabledControlPressed, 0, Config.UpControl) then
				z = z + Speed
			end
			if CheckControls(IsDisabledControlPressed, 0, Config.DownControl) then
				z = z - Speed
			end

			if RelativeMode then
				-- Print the coordinates, heading and controls on screen
				DrawText(string.format('Coordinates:\nX: %.2f\nY: %.2f\nZ: %.2f\nHeading: %.0f', x, y, z, h), 0.01, 0.3, false)

				if FollowCam then
					DrawText('W/S - Move, Spacebar/Shift - Up/Down, Page Up/Page Down/Mouse Wheel - Change speed, Q - Absolute mode, H - Disable Follow Cam', 0.5, 0.95, true)
				else
					DrawText('W/S - Move, A/D - Rotate, Spacebar/Shift - Up/Down, Page Up/Page Down - Change speed, Q - Absolute mode, H - Enable Follow Cam', 0.5, 0.95, true)
				end

				-- Calculate the change in x and y based on the speed and heading.
				local r = -h * math.pi / 180
				local dx = Speed * math.sin(r)
				local dy = Speed * math.cos(r)

				-- Move forward/backward
				if CheckControls(IsDisabledControlPressed, 0, Config.ForwardControl) then
					x = x + dx
					y = y + dy
				end
				if CheckControls(IsDisabledControlPressed, 0, Config.BackwardControl) then
					x = x - dx
					y = y - dy
				end

				if CheckControls(IsDisabledControlJustPressed, 0, Config.FollowCamControl) then
					ToggleFollowCam()
				end

				-- Rotate heading
				if FollowCam then
					local rot = GetGameplayCamRot(2)
					h = rot.z
				else
					if IsDisabledControlPressed(0, Config.LeftControl) then
						h = h + 1
					end
					if IsDisabledControlPressed(0, Config.RightControl) then
						h = h - 1
					end
				end
			else
				-- Print the coordinates and controls on screen
				DrawText(string.format('Coordinates:\nX: %.2f\nY: %.2f\nZ: %.2f', x, y, z), 0.01, 0.3, false)
				DrawText('W/A/S/D - Move, Spacebar/Shift - Up/Down, Page Up/Page Down - Change speed, Q - Relative mode', 0.5, 0.95, true)

				h = 0.0

				-- Move North
				if CheckControls(IsDisabledControlPressed, 0, Config.ForwardControl) then
					y = y + Speed
				end

				-- Move South
				if CheckControls(IsDisabledControlPressed, 0, Config.BackwardControl) then
					y = y - Speed
				end

				-- Move East
				if CheckControls(IsDisabledControlPressed, 0, Config.LeftControl) then
					x = x - Speed
				end

				-- Move West
				if CheckControls(IsDisabledControlPressed, 0, Config.RightControl) then
					x = x + Speed
				end
			end

			SetEntityCoordsNoOffset(entity, x, y, z)
			SetEntityHeading(entity, TranslateHeading(entity, h))
		end
	end
end)

function GetNoClipTarget()
	local ped = PlayerPedId()
	local veh = GetVehiclePedIsIn(ped, false)
	local mnt = GetMount(ped)
	return (veh == 0 and (mnt == 0 and ped or mnt) or veh)
end

function TranslateHeading(entity, h)
	if GetEntityType(entity) == 1 then
		return (h + 180) % 360
	else
		return h
	end
end

function ToggleRelativeMode()
	RelativeMode = not RelativeMode
	SetResourceKvp('relativeMode', tostring(RelativeMode))
end

function ToggleFollowCam()
	FollowCam = not FollowCam
	SetResourceKvp('followCam', tostring(FollowCam))
end

function SetSpeed(value)
	Speed = value
	SetResourceKvp('speed', tostring(Speed))
end

function CheckControls(func, pad, controls)
	if type(controls) == 'number' then
		return func(pad, controls)
	end

	for _, control in ipairs(controls) do
		if func(pad, control) then
			return true
		end
	end

	return false
end

function CheckControls(func, pad, controls)
	if type(controls) == 'number' then
		return func(pad, controls)
	end

	for _, control in ipairs(controls) do
		if func(pad, control) then
			return true
		end
	end

	return false
end

function LoadSettings()
	local relativeMode = GetResourceKvpString('relativeMode')
	if relativeMode ~= nil then
		RelativeMode = relativeMode == 'true'
	end

	local followCam = GetResourceKvpString('followCam')
	if followCam ~= nil then
		FollowCam = followCam == 'true'
	end

	local speed = GetResourceKvpString('speed')
	if speed ~= nil then
		Speed = tonumber(speed)
	end
end
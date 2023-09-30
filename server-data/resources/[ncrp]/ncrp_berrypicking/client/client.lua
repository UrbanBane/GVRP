local PickingPrompt
local active = false
local sleep = true
local PickedBushes = {}

local BushGroup = GetRandomIntInRange(0, 0xffffff)

function Pick()
    Citizen.CreateThread(function()
        local str = 'Pick'
        PickingPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(PickingPrompt, Config.PickPromptKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(PickingPrompt, str)
        PromptSetEnabled(PickingPrompt, true)
        PromptSetVisible(PickingPrompt, true)
        PromptSetHoldMode(PickingPrompt, true)
        PromptSetGroup(PickingPrompt, BushGroup)
        PromptRegisterEnd(PickingPrompt)
    end)
end

Citizen.CreateThread(function()
    Pick()
    while true do
        Citizen.Wait(2)
        local sleep = true
        local playerped = PlayerPedId()
        if not IsPedOnMount(playerped) and not IsPedInAnyVehicle(playerped) and not IsPedDeadOrDying(playerped) then
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
            for k,v in pairs(Config.Bushes) do
                local bush = DoesObjectOfTypeExistAtCoords(x, y, z, 1.0, GetHashKey(v), true)
                if bush and not InArray(PickedBushes, tostring(v)) then
                    sleep = false
                    if active == false then
                        local PickingGroupName = CreateVarString(10, 'LITERAL_STRING', "Forage")
                        PromptSetActiveGroupThisFrame(BushGroup, PickingGroupName)
                    end
                    if PromptHasHoldModeCompleted(PickingPrompt) then
                        active = true
                        SetCurrentPedWeapon(playerped, GetHashKey("WEAPON_UNARMED"), true, 0, false, false)
                        Citizen.Wait(100)
                        goPick(tostring(v))
                    end
                else

                end
            end
        end
        if sleep then
            Citizen.Wait(1100)
        end
    end
end)

function goPick(bush)
    EquipTool('Pick')
    local pick = 0
    local pickcount = math.random(Config.MinPicks, Config.MaxPicks)
    while hastool == true do
        FreezeEntityPosition(PlayerPedId(), true)
        if IsControlJustReleased(0, Config.CancelPickKey) or IsPedDeadOrDying(PlayerPedId()) then
            pick = 0
            table.insert(PickedBushes, tostring(bush))
            hastool = false
            Citizen.InvokeNative(0xED00D72F81CF7278, tool, 1, 1)
            DeleteObject(tool)
            Citizen.InvokeNative(0x58F7DB5BD8FA2288, ped) -- Cancel Walk Style  
            active = false
        elseif IsControlJustPressed(0, Config.PickBushKey) then
            local randomizer = math.random(Config.maxDifficulty, Config.minDifficulty)
            pick = pick + 1
            Anim(ped,"mech_pickup@plant@berries","base",-1,0)
            Wait(1000)
--[[             local testplayer = exports["syn_minigame"]:taskBar(randomizer,7)
            if testplayer == 100 then ]]
            TriggerServerEvent('ncrp_berrypicking:addItem')
        end

        if pick == pickcount then
            table.insert(PickedBushes, tostring(bush))
            pick = 0
            hastool = false
            Citizen.InvokeNative(0xED00D72F81CF7278, tool, 1, 1)
            DeleteObject(tool)
            Citizen.InvokeNative(0x58F7DB5BD8FA2288, ped) -- Cancel Walk Style
            Citizen.CreateThread(function()
                Citizen.Wait(60000) -- 60 secs per bush type
                table.remove(PickedBushes, GetArrayKey(PickedBushes, tostring(bush)))
            end)
        end
        Wait(5)
    end
    PromptSetEnabled(PropPrompt, false)
    PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
    PromptSetVisible(UsePrompt, false)
    FreezeEntityPosition(PlayerPedId(), false)
    active = false
end

function EquipTool(toolhash, prompttext, holdtowork)
    hastool = false
    Citizen.InvokeNative(0x6A2F820452017EA2) -- Clear Prompts from Screen
    if tool then
        DeleteEntity(tool)
    end
    Wait(500)
    FPrompt()
    LMPrompt(prompttext, Config.PickBushKey, holdtowork)
    ped = PlayerPedId()
    tool = CreateObject(toolhash, GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,0.0), true, true, true)
    AttachEntityToEntity(tool, ped, GetPedBoneIndex(ped, 7966), 0.0,0.0,0.0,0.0,0.0,0.0, 0, 0, 0, 0, 2, 1, 0, 0);
    ForceEntityAiAndAnimationUpdate(tool, 1)
    Citizen.InvokeNative(0x3A50753042B6891B, ped, "PITCH_FORKS")
    Wait(500)
    PromptSetEnabled(PropPrompt, true)
    PromptSetVisible(PropPrompt, true)
    PromptSetEnabled(UsePrompt, true)
    PromptSetVisible(UsePrompt, true)

    hastool = true
end

function FPrompt(text, button, hold)
    Citizen.CreateThread(function()
        proppromptdisplayed = false
        PropPrompt = nil
        local str = text or "Leave"
        local buttonhash = button or Config.CancelPickKey
        local holdbutton = hold or false
        PropPrompt = PromptRegisterBegin()
        PromptSetControlAction(PropPrompt, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(PropPrompt, str)
        PromptSetEnabled(PropPrompt, false)
        PromptSetVisible(PropPrompt, false)
        PromptSetHoldMode(PropPrompt, holdbutton)
        PromptRegisterEnd(PropPrompt)
        sleep = true
    end)
end

function LMPrompt(text, button, hold)
    Citizen.CreateThread(function()
        UsePrompt = nil
        local str = text or "Start"
        local buttonhash = button or Config.PickBushKey
        local holdbutton = hold or false
        UsePrompt = PromptRegisterBegin()
        PromptSetControlAction(UsePrompt, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(UsePrompt, str)
        PromptSetEnabled(UsePrompt, false)
        PromptSetVisible(UsePrompt, false)
        if hold then
            PromptSetHoldIndefinitelyMode(UsePrompt)
        end
        PromptRegisterEnd(UsePrompt)
    end)
end

function Anim(actor, dict, body, duration, flags, introtiming, exittiming)
    Citizen.CreateThread(function()
        RequestAnimDict(dict)
        local dur = duration or -1
        local flag = flags or 1
        local intro = tonumber(introtiming) or 1.0
        local exit = tonumber(exittiming) or 1.0
        timeout = 5
        while (not HasAnimDictLoaded(dict) and timeout>0) do
            timeout = timeout-1
            if timeout == 0 then
                print("Animation Failed to Load")
            end
            Citizen.Wait(300)
        end
        TaskPlayAnim(actor, dict, body, intro, exit, dur, flag--[[1 for repeat--]], 1, false, false, false, 0, true)
    end)
end

function GetArrayKey(array, value)
    for k,v in pairs(array) do
        if v == value then return k end
    end
    return false
end

function InArray(array, item)
    for k,v in pairs(array) do
        if v == item then return true end
    end
    return false
end
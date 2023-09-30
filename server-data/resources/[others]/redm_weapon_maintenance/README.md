# RedM Weapon Maintenance
Having trouble with dirty and sooty weapon? This script is solution for all of your pain! This script brings back RDR2 weapon inspecting/cleaning mechanics.

## RedEM:RP Compatibility note:
All weapon stats(degradation, damage, dirt, soot, isJammed) are stored in item meta field.

- Requirements:
    - [redemrp_inventory 2.0v](https://github.com/RedEM-RP/redemrp_inventory)

- Installation:
    1. Append code below to `redemrp_inventory/client/cl_main.lua`:
        ```
        RegisterNetEvent('redemrp_inventory:SendItems', function (items)
            local playerPed = PlayerPedId()

            for _, item in ipairs(items) do
                if item.type == 'item_weapon' then
                    local weaponHash = tonumber(item.weaponHash)

                    if UsedWeapons[weaponHash] and UsedWeapons[weaponHash].meta.uid == item.meta.uid then
                        UsedWeapons[weaponHash].meta = item.meta
                    end
                end
            end
        end)
        ```

    2. Change `Config.UseIntegration` config field to `'redemrp'`.
    3. That's all!


---

## VORP Compatibility note:
All weapon stats(degradation, damage, dirt, soot, isJammed) are stored in `loadout_props` database table.

- Requirements:
    - [vorp_inventory](https://github.com/VORPCORE/vorp_inventory-lua)

- Installation:
    1. Import `vorp.sql` from sql directory.
    2. Append `'@redm_weapon_maintenance/patches/vorp_inventory.lua'` to vorp_inventory fxmanifest.lua in shared_scripts.
    3. Change `Config.UseIntegration` config field to `'vorp'`.
    3. That's all!

## VORP Syn scripts compatibility note:
After enabling syn scripts compatibility, weapon id is also saved in `comps` db field as `_ID`. This enables restoring weapon props after using it within syn containers (syn containers doesn't keep track of old weapon id). Enabling this can lead to unexpected issues for any resources using weapon components and `comps` db field. So it's recomended for more experienced users.

- Enabling:
    1. Change `Config.EnableSynScriptsCompatibility` config field to `'true'`.
    2. It is recomended to use `/rwm_initweaponsid` command at first launch (**!!! ONLY IN THE SERVER CONSOLE !!!**).
    3. Reboot server.
    4. That's all!
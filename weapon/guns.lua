
RegisterCommand("clear", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify('~r~Cleared All Weapons.')
end)

Citizen.CreateThread(function()
    local h_key = 74
    local x_key = 73
    local g_key = 58
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1,  h_key --[[ H key ]]) then
            giveWeapon("weapon_APPistol")
            alert("~b~Given weapons with ~INPUT_VEH_HEADLIGHT~")
        end
        if IsControlJustReleased(1,  x_key --[[ X key ]]) then
            giveWeapon("weapon_CompactRifle")
            alert("~g~Given weapons with ~INPUT_VEH_DUCK~")
        end
        if IsControlJustReleased(1,  g_key --[[ G key ]]) then
            giveWeapon("weapon_AssaultRifleMk2")
            alert("~g~Given weapons with ~INPUT_VEH_DUCK~")
        end
    end
end)

-- Spawns a random car from the array or "table"
local cars = {"hydra", "shotaro", "cyclone", "khanjali", "oppressor2"}
RegisterCommand("car", function()
    local car = (cars[math.random(#cars)])
    spawnCar(car)
    notify("~p~Spawned car: ~h~~g~" .. car)
end)

RegisterCommand("die", function()
    SetEntityHealth(PlayerPedId(), 0)
    notify("~r~ You Died.")
end)

Citizen.CreateThread(function()

    local w_key = 77
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, w_key) then
            print("The key ".. w_key .. " was pressed")
            giveWeapon("weapon_pistol")

            giveWeapon("weapon_pumpshotgun")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")

            giveWeapon("weapon_knife")
            alert("~b~Given Weapons with ~INPUT_VEH_HEADLIGHT~")
        end
    end

end)
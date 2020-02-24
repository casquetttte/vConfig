
RegisterCommand('car', function(source, args)
    
    local vehicleName = args[1] or 'adder'

    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent('chat:addMessage', {
            args = { 'It might have been a good thing that you tried to spawn a ' .. vehicleName .. '. Who even wants their spawning to actually ^*succeed?' }
        })

        return
    end

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName) do
        Wait(500)
    end

    local playerPed = PlayerPedId()
    local pos = GetEntityCoords(playerPed)

    local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntityHeading(playerPed), true, false)

    SetPedIntoVehicle(playerPed, vehicle, -1)

    SetEntityAsNoLongerNeeded(vehicle)

    SetModelAsNoLongerNeeded(vehicleName)

    TriggerEvent('chat:addMessage', {
		args = { 'Woohoo! Enjoy your new ^*' .. vehicleName .. '!' }
	})
end, false)
local spawnPos = vector3(115.916, -403.496, 41.2534)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_f_m_beach_01'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { '^1Welcome to my server!' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)


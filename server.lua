NOAH = nil

TriggerEvent('NOAH:getSharedObject', function(obj) NOAH = obj end)

RegisterServerEvent('NOAH-qalle-needs:sync')
AddEventHandler('NOAH-qalle-needs:sync', function(player, need, gender)
    TriggerClientEvent('NOAH-qalle-needs:syncCL', -1, player, need, gender)
end)

RegisterServerEvent('NOAH-qalle-needs:add')
AddEventHandler('NOAH-qalle-needs:add', function(need, amount)
    local src = tonumber(source)
    TriggerClientEvent('NOAH_status:add', src, need, amount)
end)

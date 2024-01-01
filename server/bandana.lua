local LXFramework = exports['LXRM-core']:GetCoreObject()

LXFramework.Commands.Add('bandana', 'Bandana on/off', {}, false, function(source)
    local src = source
    TriggerClientEvent('LXRM-bandana:client:ToggleBandana', src)
end)
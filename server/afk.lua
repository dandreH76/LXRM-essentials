local LXFramework = exports['LXRM-core']:GetCoreObject()

RegisterNetEvent('KickForAFK', function()
    DropPlayer(source, 'You Have Been Kicked For Being AFK')
end)

LXFramework.Functions.CreateCallback('LXRM-afkkick:server:GetPermissions', function(source, cb)
    cb(LXFramework.Functions.GetPermission(source))
end)

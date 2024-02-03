
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded',function(xPlayer, isNew, skin)
    ESX.PlayerData = xPlayer
    if Config.ClientDebug then
        print('^5______________________________________________________________^0')
        print('^1PLAYER LOADED^2')
        print('^6Name:^2', ESX.PlayerData.firstName, ESX.PlayerData.lastName)        
        print('^6Identifier^2:', ESX.PlayerData.identifier)
        print('^6Job:^2', ESX.PlayerData.job.name)
        print('^6Job Label:^2', ESX.PlayerData.job.label)
        print('^6Job Rank:^2', ESX.PlayerData.job.grade_name)
        print('^6Job Rank Number:^2', ESX.PlayerData.job.grade)
        print('^6New Player:^2', isNew)
        print('^5______________________________________________________________^0')
    end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
    if Config.ClientJobDebug then
        print('^5______________________________________________________________^0')
        print('^1NEW PLAYER JOB DETECTED^2')
        print('^6Name:^2', ESX.PlayerData.firstName, ESX.PlayerData.lastName)        
        print('^6Identifier:^2', ESX.PlayerData.identifier)
        print('^6Job:^2', ESX.PlayerData.job.name)
        print('^6Job Label:^2', ESX.PlayerData.job.label)
        print('^6Job Rank:^2', ESX.PlayerData.job.grade_name)
        print('^6Job Rank Number:^2', ESX.PlayerData.job.grade)
        print('^5______________________________________________________________^0')
    end
end)


ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded', function(player, xPlayer, isNew)
	if Config.ServerConsoleDebug then
		print('^5_____________________________________________________________________________________________________^0')
		print('^1SPIELER GELADEN^0')
		print('Spieler Geladen', 'ID:', player, 'Spieler Name:', xPlayer.getName())
		print('^5_____________________________________________________________________________________________________^0')
	end
end)

RegisterNetEvent('esx:playerDropped', function(playerId, reason)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if Config.ServerConsoleDebug then
		print('^5_____________________________________________________________________________________________________^0')
		print('^1SPIELER DISCONNECTED^0')
		print('Vom Server getrennt', 'ID:', playerId, 'Spieler Name:', xPlayer.getName(), 'Grund: '..reason) 
		print('^5_____________________________________________________________________________________________________^0')
	end
end)

ESX.RegisterServerCallback('pd-tab:getPlayerJob', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	
	if (xPlayer.getJob().name == Config.JobName) then
		cb(true)
	else
		cb(false)
	end
end)
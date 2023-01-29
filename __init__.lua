-- this callback function will run EVERY TIME a new player has connected
level:onnotifyonce("game_ended", function() -- The script is executed after the game ends, if you want it to be executed at the beginning of each game, change "game_ended" to "prematch_over"

    local gametypewin = getgametypewin()
    local mapwin = getmapwin()
    --player.spawns = 0 -- we setup a new variable to keep count of spawns on the player entity
    game:executecommand('set sv_maprotationcurrent "gametype ' .. gametypewin .. ' map ' .. mapwin .. '"')
    print('set sv_maprotationcurrent "gametype ' .. gametypewin .. ' map ' .. mapwin .. '"')
    -- this callback function will run EVERY TIME the player has spawned
    
    
end)

function getgametypewin()
    
    local gametypesa = {}
    table.insert(gametypesa, "war")
    table.insert(gametypesa, "dom")
    table.insert(gametypesa, "hp")
    --table.insert(gametypesa, "sd")
    
    return gametypesa[math.random(#gametypesa)]
end

function getmapwin()

    local mapsa = {}
    table.insert(mapsa, "mp_convoy")
    table.insert(mapsa, "mp_showdown")
    table.insert(mapsa, "mp_bog")
    table.insert(mapsa, "mp_crash")
    table.insert(mapsa, "mp_crossfire")
    table.insert(mapsa, "mp_citystreets")
    table.insert(mapsa, "mp_shipment")
    table.insert(mapsa, "mp_vacant")
    table.insert(mapsa, "mp_broadcast")
    table.insert(mapsa, "mp_bloc")
    table.insert(mapsa, "mp_killhouse")
    table.insert(mapsa, "mp_strike")
    table.insert(mapsa, "mp_crash_snow")
    table.insert(mapsa, "mp_countdown")
    table.insert(mapsa, "mp_bog_summer")

    return mapsa[math.random(#mapsa)]

end

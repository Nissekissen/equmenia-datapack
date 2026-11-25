# runs as a player who disconnected and came back during their own running game
# hider -> treated as found (becomes a seeker, teleported to the seeker spawn)
# seeker -> unchanged, but put back at the seeker spawn since the server may have moved them
execute if score #phase HS matches 3 if entity @s[team=Hider] run return run function hs:gameloop/death
execute if entity @s[team=Seeker] run function hs:positions/teleport with storage hs:game map.seeker_spawn

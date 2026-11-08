# will be ran as a player with deaths = 1

execute if entity @s[team=Hider] run title @s title {text: "Du blev hittad!", color: "red"}

team join Seeker @s
function hs:positions/teleport with storage hs:game map.seeker_spawn
scoreboard players set @s hs.deaths 0

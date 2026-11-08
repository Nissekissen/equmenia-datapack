# runs as the player, from /trigger hs.join or a hub sign
scoreboard players set @s hs.join 0

execute if score #phase HS matches 1.. run return run tellraw @s {text: "Ett spel pågår, vänta tills det är slut", color: "red"}
execute unless data storage hs:game map run return run tellraw @s {text: "Ingen karta är vald", color: "red"}

function hs:positions/teleport with storage hs:game map.lobby
tellraw @s [{text: "Välkommen till ", color: "green"}, {nbt: "map.name", storage: "hs:game", color: "green"}]

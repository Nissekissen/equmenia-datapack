scoreboard players reset @s hs.game
team leave @s
tag @s remove hs.player
effect clear @s minecraft:speed
effect clear @s minecraft:strength
effect clear @s minecraft:blindness
execute if items entity @s armor.head minecraft:dragon_head run item replace entity @s armor.head with minecraft:air

function hs:positions/teleport with storage hs:game map.lobby

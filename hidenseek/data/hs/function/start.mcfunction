# refuse while a game is running
execute if score #phase HS matches 1.. run return run tellraw @s {text: "Ett spel pågår redan. Kör /function hs:reset först", color: "red"}

function hs:settings/resolve
scoreboard players add #gameId HS 1

function hs:participants/gather with storage hs:game map.lobby_area

# need at least 2 players
execute store result score #players HS if entity @a[team=Hider]
execute if score #players HS matches ..1 run tellraw @s {text: "Det krävs minst två spelare i lobbyn för att starta.", color: "red"}
execute if score #players HS matches ..1 run return run function hs:reset

execute store result score #chosen HS if entity @a[team=Hider, tag=hs.chosen]
scoreboard players operation #seekersLeft HS = #maxSeekers HS
scoreboard players operation #seekersLeft HS > #chosen HS

execute if score #seekersLeft HS >= #players HS run tellraw @s {text: "För många seekers för antalet spelare", color: "red"}
execute if score #seekersLeft HS >= #players HS run return run function hs:reset

scoreboard players operation #startCountdown HS = #startTime HS
scoreboard players add #startCountdown HS 1
scoreboard players set #startCooldown HS 20
scoreboard players set #phase HS 1

# if you die during the countdown, you respawn as a hider.
execute if entity @s[team=Hider] run function hs:positions/teleport with storage hs:game map.lobby
execute if entity @s[team=Seeker] run function hs:positions/teleport with storage hs:game map.seeker_spawn
execute if entity @s[team=Seeker] run item replace entity @s armor.head with minecraft:dragon_head

# give the effects back for the time that is left of the hiding phase
execute store result storage hs:tmp effects.hide_time int 1 run scoreboard players get #countdown HS
function hs:countdown/effects with storage hs:tmp effects

scoreboard players set @s hs.deaths 0

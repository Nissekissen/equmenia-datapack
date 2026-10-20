
scoreboard players remove timerTicks pve 1

execute if score timerTicks pve matches 0 run scoreboard players remove timerSeconds pve 1
execute if score timerTicks pve matches 0 run scoreboard players set timerTicks pve 20

execute if score timerSeconds pve matches 0 run function pve:waiting/finished
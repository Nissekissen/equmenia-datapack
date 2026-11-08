scoreboard players operation #countdown HS = #seekTime HS
scoreboard players set #countdownCooldown HS 20
execute store result bossbar timer max run scoreboard players get #seekTime HS
bossbar set timer visible true

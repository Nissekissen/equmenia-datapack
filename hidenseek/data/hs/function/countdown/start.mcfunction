title @a[team=Hider] title {text: "Kör!", color: "yellow"}

scoreboard players set #phase HS 2
scoreboard players operation #countdown HS = #hideTime HS
scoreboard players set #countdownCooldown HS 20

function hs:gate/hider/open

function hs:countdown/effects with storage hs:game settings
item replace entity @a[team=Seeker] armor.head with minecraft:dragon_head

execute store result bossbar timer max run scoreboard players get #hideTime HS
bossbar set timer visible true


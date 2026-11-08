execute as @e[type=player, tag=hs.player, scores={hs.deaths=1..}] run function hs:countdown/death

scoreboard players remove #countdownCooldown HS 1
execute if score #countdownCooldown HS matches ..0 run scoreboard players remove #countdown HS 1
execute if score #countdownCooldown HS matches ..0 if score #countdown HS matches 1..5 run title @a[tag=hs.player] title {score: {name: "#countdown", objective: "HS"}, color: "red"}
execute if score #countdownCooldown HS matches ..0 run scoreboard players set #countdownCooldown HS 20

# the bossbar "timer"
execute store result bossbar timer value run scoreboard players get #countdown HS
execute if score #countdown HS matches 11.. run bossbar set timer name [{text: "Tid kvar: ", color: "blue"}, {score: {name: "#countdown", objective: "HS"}, color: "blue"}]
execute if score #countdown HS matches 11.. run bossbar set timer color blue
execute if score #countdown HS matches ..10 run bossbar set timer name [{text: "Tid kvar: ", color: "red"}, {score: {name: "#countdown", objective: "HS"}, color: "red"}]
execute if score #countdown HS matches ..10 run bossbar set timer color red
bossbar set timer players @a[tag=hs.player]

execute if score #countdown HS matches ..0 run function hs:gameloop/start

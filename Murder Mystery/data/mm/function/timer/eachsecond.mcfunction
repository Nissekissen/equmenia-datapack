
scoreboard players set ticksLeft MM 20

execute if score secondsLeft MM matches ..0 run function mm:timer/eachminute

scoreboard players remove secondsLeft MM 1
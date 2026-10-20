
execute if score ticksLeft MM matches ..0 run function mm:timer/eachsecond

scoreboard players remove ticksLeft MM 1
scoreboard players remove totalTicksLeft MM 1

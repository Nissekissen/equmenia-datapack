# Main tick function

execute if score starting MM matches 1.. run function mm:start/loop

function mm:gameover/loop
execute if score gameRunning MM matches 1.. run function mm:display/loop
function mm:gold/loop
function mm:bow/loop

execute as @a[scores={MMDeaths=1..}] run function mm:death/death

execute if score waiting MM matches 1.. run function mm:waiting

scoreboard players set murderCount MM 0
execute if score gameRunning MM matches 1.. as @a[team=Murderer] run scoreboard players add murderCount MM 1

execute if score gameRunning MM matches 1.. run function mm:timer/loop
execute if score gameRunning MM matches 1.. run function mm:arrows with storage mm:game map.area

# players with no checkpoint score yet (e.g. joined late) start at 0
execute as @a unless score @s checkpoint matches 0.. run scoreboard players set @s checkpoint 0
execute as @a unless score @s br_id matches 1.. run function boatracing:assign_id
function boatracing:checkpoints/loop
execute as @a[scores={br_in_game=1}] run function boatracing:timer/loop
execute as @a[scores={br_in_game=1}] run function boatracing:reset/loop
execute as @a[scores={br_in_game=1}] at @s run function boatracing:check_boat

# Show your own best time in actionbar
execute store result score #gt br run time query gametime
scoreboard players operation #gt br %= 20 br
execute if score #gt br matches 0 positioned -2007 272 2029 as @a[distance=..10] run function boatracing:leaderboard/show_self

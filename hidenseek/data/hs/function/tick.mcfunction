# players who disconnected and came back
execute as @a[scores={hs.left=1..}] run function hs:player/rejoin

# derived participant tag
execute if score #phase HS matches 1.. run function hs:participants/sync

execute if score #phase HS matches 1 run function hs:start/loop
execute if score #phase HS matches 2 run function hs:countdown/loop
execute if score #phase HS matches 3 run function hs:gameloop/loop
execute if score #phase HS matches 3 run function hs:gameover/loop

execute if score #phase HS matches 0 as @a[scores={hs.deaths=1..}] run scoreboard players set @s hs.deaths 0

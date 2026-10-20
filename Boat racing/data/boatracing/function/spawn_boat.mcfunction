# ran as the player that is spawning the boat
execute as @s run function boatracing:checkpoints/boat
ride @s mount @e[tag=boat_summoning,sort=nearest,limit=1]
# stamp the boat with its owner's id
scoreboard players operation @e[tag=boat_summoning,sort=nearest,limit=1] br_id = @s br_id
tag @e[tag=boat_summoning,sort=nearest,limit=1] remove boat_summoning

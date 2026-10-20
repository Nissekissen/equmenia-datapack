

scoreboard players set 2 br 2
scoreboard players set 10 br 10
scoreboard players set 20 br 20
scoreboard players set 60 br 60
scoreboard players set 1200 br 1200

scoreboard players operation @s br_tenths = @s br_time
scoreboard players operation @s br_tenths /= 2 br
scoreboard players operation @s br_tenths %= 10 br

scoreboard players operation @s br_seconds = @s br_time
scoreboard players operation @s br_seconds /= 20 br
scoreboard players operation @s br_seconds %= 60 br

scoreboard players operation @s br_minutes = @s br_time
scoreboard players operation @s br_minutes /= 1200 br
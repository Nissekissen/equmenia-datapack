
scoreboard objectives add checkpoint dummy
scoreboard objectives add br_in_game dummy
scoreboard objectives add br dummy
scoreboard objectives add br_time dummy
scoreboard objectives add br_tenths dummy
scoreboard objectives add br_seconds dummy
scoreboard objectives add br_minutes dummy
scoreboard objectives add br_highscore dummy
scoreboard objectives add br_id dummy

function boatracing:leaderboard/init

# execute as @a run scoreboard players set @s br_in_game 0
# execute as @a run scoreboard players set @s checkpoint 0

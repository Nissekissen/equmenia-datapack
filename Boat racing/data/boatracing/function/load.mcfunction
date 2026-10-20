
scoreboard objectives add checkpoint dummy
scoreboard objectives add br_in_game dummy
scoreboard objectives add br dummy
scoreboard objectives add br_time dummy
scoreboard objectives add br_tenths dummy
scoreboard objectives add br_seconds dummy
scoreboard objectives add br_minutes dummy
scoreboard objectives add br_highscore dummy
scoreboard objectives add br_id dummy

scoreboard objectives add br_practice dummy
scoreboard objectives add br_menu_hold dummy

scoreboard objectives add br_split1 dummy
scoreboard objectives add br_split2 dummy
scoreboard objectives add br_split3 dummy
scoreboard objectives add br_split4 dummy
scoreboard objectives add br_split5 dummy

scoreboard objectives add br_pb1 dummy
scoreboard objectives add br_pb2 dummy
scoreboard objectives add br_pb3 dummy
scoreboard objectives add br_pb4 dummy
scoreboard objectives add br_pb5 dummy

function boatracing:leaderboard/init

# execute as @a run scoreboard players set @s br_in_game 0
# execute as @a run scoreboard players set @s checkpoint 0

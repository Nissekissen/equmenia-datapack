
scoreboard players set gameRunning MM 0

team empty Dead
team empty Innocent
team empty Detective
team empty Murderer

execute if data storage mm:game map run function mm:reset_players with storage mm:game map.lobby_area

bossbar set mmtimer name {"text": "Murder Mystery"}
bossbar set mmtimer visible false

scoreboard players set murderCount MM 0

scoreboard players set lastKiller MM 0

tag @a remove murderer

kill @e[tag=gold]
kill @e[tag=bow]

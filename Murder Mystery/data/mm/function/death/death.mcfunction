# when someone dies

execute if score gameRunning MM matches 1.. as @s[team=Innocent] run function mm:death/innocent
execute if score gameRunning MM matches 1.. as @s[team=Murderer] run function mm:death/murderer
execute if score gameRunning MM matches 1.. as @s[team=Detective] if score skip MM matches ..0 run function mm:death/detective


# tellraw Marreman {"score": {"name": "@p[team=Detective]", "objective": "MMKills"}}

# A murderer just died. Don't end the game here – gameover/loop ends it only
# when ALL murderers are dead (murdererLeft == 0), so multiple murderers work.
# We only RECORD who shot the murderer, so the win screen can show the right text.
# lastKiller: 1 = a detective shot a murderer, 2 = an innocent shot a murderer.
execute if entity @s[team=Murderer] if entity @p[team=Detective, scores={MMKills=1..}] run scoreboard players set lastKiller MM 1
execute if entity @s[team=Murderer] if entity @p[team=Innocent, scores={MMKills=1..}] run scoreboard players set lastKiller MM 2

# if detective kills innocent

# if an innocent dies and the murderer didn't kill them
scoreboard players set skip MM 1
execute as @s[team=Innocent] as @a[team=Detective, scores={MMKills=1..},limit=1] unless entity @p[team=Murderer, scores={MMKills=1..}] as @a[team=Detective, limit=1] run function mm:death/detective_lose
scoreboard players set skip MM 0

execute if score gameRunning MM matches 1.. as @s run team join Dead @s

scoreboard players set @a MMKills 0
scoreboard players set @s MMDeaths 0

execute if score gameRunning MM matches 1.. run clear @s
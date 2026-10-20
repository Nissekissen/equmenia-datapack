# Check if there are no innocent or detectives left

scoreboard players set innocentLeft MM 0
execute as @a[team=Innocent] run scoreboard players add innocentLeft MM 1

scoreboard players set detectiveLeft MM 0
execute as @a[team=Detective] run scoreboard players add detectiveLeft MM 1

scoreboard players set murdererLeft MM 0
execute as @a[team=Murderer] run scoreboard players add murdererLeft MM 1

scoreboard players set playersLeft MM 0
scoreboard players operation playersLeft MM += innocentLeft MM
scoreboard players operation playersLeft MM += detectiveLeft MM

# tellraw Marreman [{"score": {"name": "playersLeft", "objective": "MM"}}, {"text": " "}, {"score": {"name": "detectiveLeft", "objective": "MM"}}, {"text": " "}, {"score": {"name": "innocentLeft", "objective": "MM"}}]

# Murderer has won
scoreboard players set endType MM 0
execute if score playersLeft MM matches ..0 if score gameRunning MM matches 1.. run return run function mm:gameover/gameover

# All murderers are dead -> innocents/detective win.
# Pick the win screen based on who shot the last murderer:
#   lastKiller 1 = detective shot -> endType 1 (detectivewon)
#   lastKiller 2 = innocent shot  -> endType 2 (innocentwon)
# Default to detectivewon if unknown.
execute if score lastKiller MM matches 2 run scoreboard players set endType MM 2
execute unless score lastKiller MM matches 2 run scoreboard players set endType MM 1
execute if score murdererLeft MM matches ..0 if score gameRunning MM matches 1.. run return run function mm:gameover/gameover
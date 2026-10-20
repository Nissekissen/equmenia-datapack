
scoreboard players set secondsLeft MM 60

scoreboard players set endType MM 4
execute if score minutesLeft MM matches ..0 run return run function mm:gameover/gameover

scoreboard players remove minutesLeft MM 1

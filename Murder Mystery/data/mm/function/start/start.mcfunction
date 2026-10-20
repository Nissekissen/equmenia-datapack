# Start the game
scoreboard players set waiting MM 0
scoreboard players set starting MM 1

scoreboard players set startStepCooldown MM 0
scoreboard players set startCooldown MM 20

scoreboard players set goldID MM 0

title @a clear

# Randomly select one player as murderer and one as detective



# Teleport the players to random places on the map

# TODO: add a nice countdown and a delay before teleport

execute as @a[team=Innocent] run effect give @s blindness 3 127 true
execute as @a[team=Innocent] run function mm:positions/random

# Show to the players what role they got.

scoreboard players operation temp MM = murderers MM
function mm:start/murder_loop

# Tell each murderer who their fellow murderers are (only they see this).
# Only bother when there is more than one murderer.
execute if score murderers MM matches 2.. as @a[team=Murderer] run function mm:start/reveal_murderers

execute as @r[team=Innocent] run function mm:start/detective
execute as @a[team=Innocent] run function mm:start/innocent

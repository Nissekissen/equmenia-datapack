# Load function - runs when datapack is loaded

# Create scoreboard objectives

scoreboard objectives add MM dummy "Murder Mystery"
scoreboard objectives add MMDeaths deathCount
scoreboard objectives add MMKilledByPlayer minecraft.killed:minecraft.player
scoreboard objectives add MMKills playerKillCount

scoreboard objectives add RNG_Variable dummy "RNG variable"
scoreboard objectives add RNG_Constant dummy "RNG constant"

bossbar add mmtimer "Murder Mystery"
bossbar set mmtimer color red

# Create teams
team add Innocent "Innocent"
team modify Innocent friendlyFire true
team modify Innocent nametagVisibility never

team add Murderer "Murderer"
team modify Murderer friendlyFire true
team modify Murderer nametagVisibility hideForOtherTeams

team add Detective "Detective"
team modify Detective friendlyFire true
team modify Detective nametagVisibility hideForOtherTeams

team add Dead "Dead"
team modify Dead friendlyFire false
team modify Dead nametagVisibility hideForOtherTeams

# define constants

scoreboard players set C_3 RNG_Constant 3
scoreboard players set C_20 RNG_Constant 20
scoreboard players set C_1000 RNG_Constant 1000
scoreboard players set C_e RNG_Constant 2718281
scoreboard players set C_PI RNG_Constant 314159
scoreboard players set C_Range RNG_Constant 1000
scoreboard players set C_NEG_1 RNG_Constant -1

scoreboard players set RNGseed RNG_Variable 0

scoreboard players set playersLeft MM 0

scoreboard players set goldStepCooldown MM 0
scoreboard players set goldCooldown MM 5

scoreboard players set murderers MM 1

scoreboard players set lastKiller MM 0

function mm:reset


data remove storage mm:maps registry
function #mm:register_maps

function mm:select_map {id: "fiskeback"}

tellraw Marreman "Murder Mystery reloaded!"

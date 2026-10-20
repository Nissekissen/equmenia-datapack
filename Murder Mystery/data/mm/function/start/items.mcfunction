# Give the murderer and the detective their items

tellraw @a {"text": "Mördaren har fått sitt svärd!", "color": "gold"}

execute as @a[team=Murderer] run give @s iron_sword[enchantments={sharpness:255}] 1

execute as @a[team=Detective] run give @s bow
execute as @a[team=Detective] run give @s arrow 1

scoreboard players set starting MM 0
scoreboard players set gameRunning MM 1
scoreboard players set minutesLeft MM 5
scoreboard players set secondsLeft MM 0
scoreboard players set ticksLeft MM 20
# 20 * 60 * 5 = 6000
scoreboard players set totalTicksLeft MM 6000

bossbar set mmtimer visible true
bossbar set mmtimer max 6000

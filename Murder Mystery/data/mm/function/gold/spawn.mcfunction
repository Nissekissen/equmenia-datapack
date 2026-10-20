# Spawn gold at random locations

# Reset the cooldown so the ..0 spawn condition works next cycle (3 seconds)
scoreboard players set goldCooldown MM 3

# Spawn 2 gold, each teleported to its own random location.
summon item_display ~ ~ ~ {item: {id: "gold_ingot", count: 1}, item_display: "ground", Tags: ["gold", "spawning"], Rotation: [45f, 90f]}
summon item_display ~ ~ ~ {item: {id: "gold_ingot", count: 1}, item_display: "ground", Tags: ["gold", "spawning"], Rotation: [45f, 90f]}

execute as @e[tag=spawning] run function mm:positions/random
execute as @e[tag=spawning] run tag @s remove spawning

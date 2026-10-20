# spawns a zombie spawner at the current location

execute if score @s layer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:["pve_temp", "pve_zombiespawner", "pve_layer_1", "pve_layer_2", "pve_layer_3", "pve_layer_4", "pve_layer_5"], NoGravity: true, Invisible: true, Invulnerable: true}
execute if score @s layer matches 2 run summon minecraft:armor_stand ~ ~ ~ {Tags:["pve_temp", "pve_zombiespawner", "pve_layer_2", "pve_layer_3", "pve_layer_4", "pve_layer_5"], NoGravity: true, Invisible: true, Invulnerable: true}
execute if score @s layer matches 3 run summon minecraft:armor_stand ~ ~ ~ {Tags:["pve_temp", "pve_zombiespawner", "pve_layer_3", "pve_layer_4", "pve_layer_5"], NoGravity: true, Invisible: true, Invulnerable: true}
execute if score @s layer matches 4 run summon minecraft:armor_stand ~ ~ ~ {Tags:["pve_temp", "pve_zombiespawner", "pve_layer_4", "pve_layer_5"], NoGravity: true, Invisible: true, Invulnerable: true}
execute if score @s layer matches 5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["pve_temp", "pve_zombiespawner", "pve_layer_5"], NoGravity: true, Invisible: true, Invulnerable: true}

execute if score @s layer matches 1 run team join layer1 @e[tag=pve_temp]
execute if score @s layer matches 2 run team join layer2 @e[tag=pve_temp]
execute if score @s layer matches 3 run team join layer3 @e[tag=pve_temp]
execute if score @s layer matches 4 run team join layer4 @e[tag=pve_temp]
execute if score @s layer matches 5 run team join layer5 @e[tag=pve_temp]

tag @e[tag=pve_temp] remove pve_temp

tellraw @s {"text": "Zombiespawner spawnad!", "color": "green"}
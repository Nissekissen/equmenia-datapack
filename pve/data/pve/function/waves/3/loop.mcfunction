# Group 1: 5 Skeletons [Leather Armor]
execute as @e[tag=pve_group_1] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1b},{id:"minecraft:leather_helmet",count:1b}], HandItems:[{id:"minecraft:bow",count:1b},{}], IsBaby:0b}

# Group 2: 10 Skeletons [Chainmail Armor]
execute as @e[tag=pve_group_2] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1b},{id:"minecraft:chainmail_helmet",count:1b}], HandItems:[{id:"minecraft:bow",count:1b},{}], IsBaby:0b}

# Group 3: 20 Zombies [Leather Armor]
execute as @e[tag=pve_group_3] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1b},{id:"minecraft:leather_helmet",count:1b}], HandItems:[{},{}], IsBaby:0b}

# Group 4: 30 Zombies [Chainmail Armor]
execute as @e[tag=pve_group_4] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1b},{id:"minecraft:chainmail_helmet",count:1b}], HandItems:[{},{}], IsBaby:0b}
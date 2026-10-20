# Group 1: 5 Baby Zombies [No Armor]
execute as @e[tag=pve_group_1] run data merge entity @s {ArmorItems:[{id:"minecraft:chainmail_boots",count:1b},{id:"minecraft:chainmail_leggings",count:1b},{id:"minecraft:chainmail_chestplate",count:1b},{id:"minecraft:chainmail_helmet",count:1b}],HandItems:[{},{}],IsBaby:1b}

# Group 2: 5 Skeletons [Iron Armor]
execute as @e[tag=pve_group_2] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1b},{id:"minecraft:iron_helmet",count:1b}], HandItems:[{id:"minecraft:bow",count:1b},{}], IsBaby:0b}

# Group 3: 10 Skeletons [Iron Armor, Protection I (chest)]
execute as @e[tag=pve_group_3] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":1}}},{id:"minecraft:iron_helmet",count:1b}], HandItems:[{id:"minecraft:bow",count:1b},{}], IsBaby:0b}

# Group 4: 20 Zombies [Iron Armor]
execute as @e[tag=pve_group_4] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1b},{id:"minecraft:iron_helmet",count:1b}], HandItems:[{},{}], IsBaby:0b}

# Group 5: 35 Zombies [Iron Armor, Protection I (chest/legs)]
execute as @e[tag=pve_group_5] run data merge entity @s {ArmorItems:[{},{id:"minecraft:iron_leggings",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":1}}},{id:"minecraft:iron_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":1}}},{}], HandItems:[{},{}], IsBaby:0b}
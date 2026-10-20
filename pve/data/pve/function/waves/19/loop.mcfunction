# Group 1: 15 Baby Zombies [No Armor]
execute as @e[tag=pve_group_1] run data merge entity @s {ArmorItems:[{id:"minecraft:diamond_boots",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}},{id:"minecraft:diamond_leggings",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}},{id:"minecraft:diamond_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}},{id:"minecraft:diamond_helmet",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}}],HandItems:[{},{}],IsBaby:1b}

# Group 2: 5 Skeletons [Diamond Armor, Protection III (chest)]
execute as @e[tag=pve_group_2] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":3}}},{id:"minecraft:diamond_helmet",count:1b}], HandItems:[{id:"minecraft:bow",count:1b},{}], IsBaby:0b}

# Group 3: 30 Skeletons [Diamond Armor, Protection IV (chest)]
execute as @e[tag=pve_group_3] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}},{id:"minecraft:diamond_helmet",count:1b}], HandItems:[{id:"minecraft:bow",count:1b},{}], IsBaby:0b}

# Group 4: 15 Zombies [Diamond Armor, Protection III (chest/legs)]
execute as @e[tag=pve_group_4] run data merge entity @s {ArmorItems:[{},{id:"minecraft:diamond_leggings",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":3}}},{id:"minecraft:diamond_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":3}}},{}], HandItems:[{},{}], IsBaby:0b}

# Group 5: 80 Zombies [Diamond Armor, Protection IV (chest/legs)]
execute as @e[tag=pve_group_5] run data merge entity @s {ArmorItems:[{},{id:"minecraft:diamond_leggings",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}},{id:"minecraft:diamond_chestplate",count:1b,components:{"minecraft:enchantments":{"minecraft:protection":4}}},{}], HandItems:[{},{}], IsBaby:0b}
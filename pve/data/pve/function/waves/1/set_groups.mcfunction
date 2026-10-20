execute as @e[tag=pve_enemy,tag=pve_skeleton,limit=10,sort=random] run tag @s add pve_group_1
execute as @e[tag=pve_enemy,tag=!pve_group_1] run tag @s add pve_group_2
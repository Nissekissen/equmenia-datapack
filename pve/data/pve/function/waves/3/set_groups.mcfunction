execute as @e[tag=pve_enemy,tag=pve_skeleton,limit=5,sort=random] run tag @s add pve_group_1
execute as @e[tag=pve_enemy,tag=pve_skeleton,tag=!pve_group_1,limit=10,sort=random] run tag @s add pve_group_2
execute as @e[tag=pve_enemy,tag=!pve_group_1,tag=!pve_group_2,limit=20,sort=random] run tag @s add pve_group_3
execute as @e[tag=pve_enemy,tag=!pve_group_1,tag=!pve_group_2,tag=!pve_group_3] run tag @s add pve_group_4
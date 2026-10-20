execute as @e[tag=pve_enemy,limit=5,sort=random] run tag @s add pve_group_1
execute as @e[tag=pve_enemy,tag=pve_skeleton,limit=10,sort=random] run tag @s add pve_group_2
execute as @e[tag=pve_enemy,tag=pve_skeleton,tag=!pve_group_2,limit=15,sort=random] run tag @s add pve_group_3
execute as @e[tag=pve_enemy,tag=!pve_group_1,tag=!pve_group_2,tag=!pve_group_3,limit=25,sort=random] run tag @s add pve_group_4
execute as @e[tag=pve_enemy,tag=!pve_group_1,tag=!pve_group_2,tag=!pve_group_3,tag=!pve_group_4] run tag @s add pve_group_5
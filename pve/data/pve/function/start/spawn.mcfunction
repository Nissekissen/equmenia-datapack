# spawn the correct amount of zombies

execute store result score maxZombies pve run function pve:waves/get_zombie_count
scoreboard players set zombieCount pve 0

function pve:start/spawn_loop

function pve:waves/set_groups
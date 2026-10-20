
function pve:spawn_random_spawner

execute if score zombieCount pve < maxZombies pve run function pve:start/spawn_loop
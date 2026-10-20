# Return the zombie count based on the current wave

# Match current wave to waves/x/zombie_count.mcfunction
execute if score currentWave pve matches 1 run return run function pve:waves/1/zombie_count
execute if score currentWave pve matches 2 run return run function pve:waves/2/zombie_count
execute if score currentWave pve matches 3 run return run function pve:waves/3/zombie_count
execute if score currentWave pve matches 4 run return run function pve:waves/4/zombie_count
execute if score currentWave pve matches 5 run return run function pve:waves/5/zombie_count
execute if score currentWave pve matches 6 run return run function pve:waves/6/zombie_count
execute if score currentWave pve matches 7 run return run function pve:waves/7/zombie_count
execute if score currentWave pve matches 8 run return run function pve:waves/8/zombie_count
execute if score currentWave pve matches 9 run return run function pve:waves/9/zombie_count
execute if score currentWave pve matches 10 run return run function pve:waves/10/zombie_count
execute if score currentWave pve matches 11 run return run function pve:waves/11/zombie_count
execute if score currentWave pve matches 12 run return run function pve:waves/12/zombie_count
execute if score currentWave pve matches 13 run return run function pve:waves/13/zombie_count
execute if score currentWave pve matches 14 run return run function pve:waves/14/zombie_count
execute if score currentWave pve matches 15 run return run function pve:waves/15/zombie_count
execute if score currentWave pve matches 16 run return run function pve:waves/16/zombie_count
execute if score currentWave pve matches 17 run return run function pve:waves/17/zombie_count
execute if score currentWave pve matches 18 run return run function pve:waves/18/zombie_count
execute if score currentWave pve matches 19 run return run function pve:waves/19/zombie_count
execute if score currentWave pve matches 20 run return run function pve:waves/20/zombie_count


# default: return 20
return 20

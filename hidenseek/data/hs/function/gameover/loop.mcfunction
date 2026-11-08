# 0 = still running, 1 = everyone found, 2 = seeking time ran out
scoreboard players set #endReason HS 0
execute if score #seekTime HS matches 1.. if score #countdown HS matches ..0 run scoreboard players set #endReason HS 2
execute if score #playersLeft HS matches ..0 run scoreboard players set #endReason HS 1
execute if score #endReason HS matches 0 run return fail

function hs:gameover/announce
function hs:reset

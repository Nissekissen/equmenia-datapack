# everyone found: the last hider found wins
execute if score #endReason HS matches 1 run function hs:gameover/everyone_found

# time ran out: everyone still hiding wins
execute if score #endReason HS matches 2 run function hs:gameover/time_ran_out

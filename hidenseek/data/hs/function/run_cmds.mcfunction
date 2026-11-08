# runs every command in storage hs:tmp cmds
execute unless data storage hs:tmp cmds[0] run return 0
function hs:run_cmd with storage hs:tmp cmds[0]
data remove storage hs:tmp cmds[0]
function hs:run_cmds

function hs:participants/sync

# everyone in the game goes back to the lobby and loses game items
execute as @a[tag=hs.player] run function hs:player/cleanup

team empty Hider
team empty Seeker

function hs:gate/hider/close
function hs:gate/seeker/close

bossbar set timer visible false

scoreboard players set #phase HS 0
scoreboard players set #seekersLeft HS 0


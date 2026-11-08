scoreboard players set @s hs.left 0

# was not in a match when they left: do nothing
execute unless score @s hs.game matches 0.. run return 0

# rejoining their own running game: stay in
execute if score #phase HS matches 1.. if score @s hs.game = #gameId HS run return 0

# otherwise clean up leftovers from an old game
function hs:player/cleanup

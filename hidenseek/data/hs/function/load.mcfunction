scoreboard objectives add HS dummy
scoreboard objectives add hs.deaths deathCount
scoreboard objectives add hs.game dummy
scoreboard objectives add hs.left custom:leave_game

team add Seeker "Seeker"
team modify Seeker color blue
team modify Seeker nametagVisibility hideForOtherTeams
team modify Seeker friendlyFire false

team add Hider "Hider"
team modify Hider color green
team modify Hider friendlyFire false
team modify Hider nametagVisibility never

bossbar add timer "Time left"
bossbar set timer color blue
bossbar set timer max 60
bossbar set timer visible false

execute unless score #phase HS matches 0.. run scoreboard players set #phase HS 0
execute unless score #gameId HS matches 0.. run scoreboard players set #gameId HS 0

data modify storage hs:settings defaults set value {max_seekers: 1, hide_time: 60, start_time: 3, seek_time: 0}
execute unless data storage hs:settings global run data modify storage hs:settings global set value {}

execute unless data storage hs:maps seeded run function hs:seed

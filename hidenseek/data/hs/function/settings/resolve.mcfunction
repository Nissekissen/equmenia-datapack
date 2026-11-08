data modify storage hs:game settings set from storage hs:settings defaults
data modify storage hs:game settings merge from storage hs:settings global
data modify storage hs:game settings merge from storage hs:game map.settings

execute store result score #maxSeekers HS run data get storage hs:game settings.max_seekers
execute store result score #hideTime HS run data get storage hs:game settings.hide_time
execute store result score #startTime HS run data get storage hs:game settings.start_time
execute store result score #seekTime HS run data get storage hs:game settings.seek_time

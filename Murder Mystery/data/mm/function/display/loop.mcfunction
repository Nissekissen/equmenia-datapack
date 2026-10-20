# display/loop.mcfunction

function mm:display/actionbar with storage mm:game map.area
bossbar set mmtimer players @a
execute store result bossbar mmtimer value run scoreboard players get totalTicksLeft MM
bossbar set mmtimer name [{"text": "Tid kvar: ", "color": "red"}, {"score": {"name": "minutesLeft", "objective": "MM"}, "color": "red"}, {"text": "m ", "color": "red"}, {"score": {"name": "secondsLeft", "objective": "MM"}, "color": "red"}, {"text": "s", "color": "red"}]

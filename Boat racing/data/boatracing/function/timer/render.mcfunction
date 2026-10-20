
# if minutes == 0
# if seconds < 10
execute if score @s br_minutes matches 0 run title @s actionbar [{"text": "Tid: ", "color": "green"}, {"score": {"name": "@s",  "objective": "br_seconds"}}, {"text": ".", "color": "green"}, {"score": {"name": "@s", "objective": "br_tenths"}, "color": "green"}]

# if minutes < 10
# if seconds < 10
execute if score @s br_minutes matches 1..9 if score @s br_seconds matches 0..9 run title @s actionbar [{"text": "Tid: 0", "color": "green"}, {"score": {"name": "@s", "objective": "br_minutes"}, "color": "green"}, {"text": ":0", "color": "green"}, {"score": {"name": "@s",  "objective": "br_seconds"}}, {"text": ".", "color": "green"}, {"score": {"name": "@s", "objective": "br_tenths"}, "color": "green"}]

# if seconds >= 10
execute if score @s br_minutes matches 1..9 if score @s br_seconds matches 10.. run title @s actionbar [{"text": "Tid: 0", "color": "green"}, {"score": {"name": "@s", "objective": "br_minutes"}, "color": "green"}, {"text": ":", "color": "green"}, {"score": {"name": "@s",  "objective": "br_seconds"}}, {"text": ".", "color": "green"}, {"score": {"name": "@s", "objective": "br_tenths"}, "color": "green"}]

# if minutes >= 10
# if seconds < 10
execute if score @s br_minutes matches 10.. if score @s br_seconds matches 0..9 run title @s actionbar [{"text": "Tid: ", "color": "green"}, {"score": {"name": "@s", "objective": "br_minutes"}, "color": "green"}, {"text": ":0", "color": "green"}, {"score": {"name": "@s",  "objective": "br_seconds"}}, {"text": ".", "color": "green"}, {"score": {"name": "@s", "objective": "br_tenths"}, "color": "green"}]

# if seconds >= 10
execute if score @s br_minutes matches 10.. if score @s br_seconds matches 10.. run title @s actionbar [{"text": "Tid: ", "color": "green"}, {"score": {"name": "@s", "objective": "br_minutes"}, "color": "green"}, {"text": ":", "color": "green"}, {"score": {"name": "@s",  "objective": "br_seconds"}}, {"text": ".", "color": "green"}, {"score": {"name": "@s", "objective": "br_tenths"}, "color": "green"}]



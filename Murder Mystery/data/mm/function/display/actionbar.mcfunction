# display/actionbar.mcfunction {x, y, z, dx, dy, dz}

$execute as @a[x=$(x), y=$(y), z=$(z), dx=$(dx), dy=$(dy), dz=$(dz)] run title @s actionbar [{"text": "Oskyldiga kvar: ", "color": "green"}, {"score": {"name": "playersLeft", "objective": "MM"}, "color": "green"}]

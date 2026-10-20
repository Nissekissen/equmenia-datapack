# Spawn the bow at exact coordinates via macro (called with storage mm:death pos)
# Force-load the death chunk briefly so the summon lands even if no player is nearby.
$forceload add $(x) $(z)
$summon item_display $(x) $(y) $(z) {item: {id: "minecraft:bow", count: 1}, item_display:"ground", Rotation:[45f,90f], Tags:["bow"]}
$forceload remove $(x) $(z)

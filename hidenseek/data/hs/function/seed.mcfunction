data remove storage hs:maps registry
data remove storage hs:maps list

data modify storage hs:maps registry.bathroom set value {name: "Badrummet", lobby: {x: -497.5, y: 130, z: -284.5, yaw: 90, pitch: 0}, arena: {x: -548, y: 25, z: -344, dx: 119, dy: 116, dz: 93}, seeker_spawn: {x: -492.5, y: 130, z: -284.5, yaw: 90, pitch: 0}, lobby_area: {x: -514, y: 123, z: -295, dx: 25, dy: 14, dz: 22}, hider_gate: {open: [], close: []}, seeker_gate: {open: [], close: []}, settings: {}}

data modify storage hs:maps registry.bathroom.hider_gate.open append value {cmd: "fill -505 128 -283 -501 128 -287 air replace white_stained_glass"}
data modify storage hs:maps registry.bathroom.hider_gate.close append value {cmd: "fill -505 128 -283 -501 128 -287 white_stained_glass replace air"}

data modify storage hs:maps registry.bathroom.seeker_gate.open append value {cmd: "fill -495 130 -286 -495 132 -284 air"}
data modify storage hs:maps registry.bathroom.seeker_gate.close append value {cmd: "fill -495 130 -286 -495 132 -284 tinted_glass"}

data modify storage hs:maps list append value {id: "bathroom", name: "Badrummet"}
data modify storage hs:maps seeded set value 1b

function hs:select_map {id: "bathroom"}

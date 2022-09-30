tp @a[team=props] -42 67.2 -34
scoreboard players operation .lock snoeyz.hiding_time = .lock snoeyz.options.hiding_time

scoreboard players reset @a snoeyz.prop.amethyst_cluster
scoreboard players reset @a snoeyz.prop.anvil
scoreboard players reset @a snoeyz.prop.barrel
scoreboard players reset @a snoeyz.prop.campfire
scoreboard players reset @a snoeyz.prop.candle
scoreboard players reset @a snoeyz.prop.composter
scoreboard players reset @a snoeyz.prop.crafting_table
scoreboard players reset @a snoeyz.prop.flowering_azaleas
scoreboard players reset @a snoeyz.prop.iron_trapdoor
scoreboard players reset @a snoeyz.prop.lantern
scoreboard players reset @a snoeyz.prop.torch

scoreboard players enable @a snoeyz.prop.amethyst_cluster
scoreboard players enable @a snoeyz.prop.anvil
scoreboard players enable @a snoeyz.prop.barrel
scoreboard players enable @a snoeyz.prop.campfire
scoreboard players enable @a snoeyz.prop.candle
scoreboard players enable @a snoeyz.prop.composter
scoreboard players enable @a snoeyz.prop.crafting_table
scoreboard players enable @a snoeyz.prop.flowering_azaleas
scoreboard players enable @a snoeyz.prop.iron_trapdoor
scoreboard players enable @a snoeyz.prop.lantern
scoreboard players enable @a snoeyz.prop.torch

scoreboard players set .lock snoeyz.gamestate 3

execute if score .lock snoeyz.prop_selection_time matches 0 run title @a[team=props] title ["",{"text":"GO HIDE!!!","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 0 run title @a[team=seekers] title ["",{"text":"Wait While The Props Hide...","color":"dark_aqua"}]
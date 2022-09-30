title @a title ["",{"text":"SEEKERS ARE ON THE LOOSE!","color":"dark_aqua"}]
tp @a[team=seekers] -42 67.2 -34

fill -20 200 -20 20 210 20 minecraft:air

give @a[team=seekers] minecraft:snowball

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

scoreboard players set .lock snoeyz.gamestate 4
scoreboard players operation .lock snoeyz.play_time = .lock snoeyz.options.play_time
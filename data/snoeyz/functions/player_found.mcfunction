tellraw @a ["",{"selector":"@s","color":"dark_aqua"}," has been found!"]
team leave @s
execute if score .lock snoeyz.options.infect_mode matches 0 run gamemode spectator @s
execute if score .lock snoeyz.options.infect_mode matches 1 run function snoeyz:add_seeker
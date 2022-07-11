execute if score .lock snoeyz.options.infect_mode matches 1 run scoreboard players set .lock snoeyz.options.infect_mode -1
execute if score .lock snoeyz.options.infect_mode matches 0 run scoreboard players set .lock snoeyz.options.infect_mode 1
execute if score .lock snoeyz.options.infect_mode matches -1 run scoreboard players set .lock snoeyz.options.infect_mode 0
function snoeyz:run_options
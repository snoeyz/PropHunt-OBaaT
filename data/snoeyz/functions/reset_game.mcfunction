scoreboard players set .lock snoeyz.gamestate 0

scoreboard players set .lock snoeyz.team_lobby_countdown -1
scoreboard players set .lock snoeyz.prop_selection_time -1
scoreboard players set .lock snoeyz.hiding_time -1
scoreboard players set .lock snoeyz.play_time -1

scoreboard players enable @a prophunt_new_game
tellraw @a ["",{"text":"Begin a ","color":"dark_aqua"},{"text":"[New Game]","color":"red","clickEvent":{"action":"run_command","value":"/trigger prophunt_new_game"}},{"text":"?","color":"dark_aqua"}]
function snoeyz:clear_map
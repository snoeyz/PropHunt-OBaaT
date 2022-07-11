execute if score .lock snoeyz.props_remaining matches 1.. run title @a title ["",{"text":"PROPS WIN!!!","color":"dark_aqua"}]
execute if score .lock snoeyz.props_remaining matches 0 run title @a title ["",{"text":"SEEKERS WIN!!!","color":"red"}]

function snoeyz:reset_game
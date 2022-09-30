tellraw @s ["","You have selected the ",{"text":"[Barrel]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-barrel
item replace entity @s armor.head from block 0 0 0 container.2
scoreboard players reset @s snoeyz.prop.barrel
scoreboard players enable @s snoeyz.prop.barrel
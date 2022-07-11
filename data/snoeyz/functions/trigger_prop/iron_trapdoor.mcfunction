tellraw @s ["","You have selected the ",{"text":"[Iron Trapdoor]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-iron_trapdoor
item replace entity @s armor.head from block 0 0 0 container.8
scoreboard players reset @s snoeyz.prop.iron_trapdoor
scoreboard players enable @s snoeyz.prop.iron_trapdoor
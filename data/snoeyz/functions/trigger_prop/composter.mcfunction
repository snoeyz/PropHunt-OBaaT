tellraw @s ["","You have selected the ",{"text":"[Composter]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-composter
item replace entity @s armor.head from block 0 0 0 container.3
scoreboard players reset @s snoeyz.prop.composter
scoreboard players enable @s snoeyz.prop.composter
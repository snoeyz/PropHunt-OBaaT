tellraw @s ["","You have selected the ",{"text":"[Amethyst Crystal]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-amethyst_cluster
item replace entity @s armor.head from block 0 0 0 container.0
scoreboard players reset @s snoeyz.prop.amethyst_cluster
scoreboard players enable @s snoeyz.prop.amethyst_cluster
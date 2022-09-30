tellraw @s ["","You have selected the ",{"text":"[Lantern]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-lantern
item replace entity @s armor.head from block 0 0 0 container.9
scoreboard players reset @s snoeyz.prop.lantern
scoreboard players enable @s snoeyz.prop.lantern
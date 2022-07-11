tellraw @s ["","You have selected the ",{"text":"[Sugar Cane]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-sugar_cane
item replace entity @s armor.head from block 0 0 0 container.12
scoreboard players reset @s snoeyz.prop.sugar_cane
scoreboard players enable @s snoeyz.prop.sugar_cane
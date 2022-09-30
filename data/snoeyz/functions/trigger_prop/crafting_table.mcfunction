tellraw @s ["","You have selected the ",{"text":"[Crafting Table]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-crafting_table
item replace entity @s armor.head from block 0 0 0 container.6
scoreboard players reset @s snoeyz.prop.crafting_table
scoreboard players enable @s snoeyz.prop.crafting_table
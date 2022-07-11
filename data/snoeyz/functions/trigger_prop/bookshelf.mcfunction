tellraw @s ["","You have selected the ",{"text":"[Bookshelf]","color":"gold"}," as your prop."]
function snoeyz:clear_chosen_prop_tags
tag @s add prop-bookshelf
item replace entity @s armor.head from block 0 0 0 container.11
scoreboard players reset @s snoeyz.prop.bookshelf
scoreboard players enable @s snoeyz.prop.bookshelf
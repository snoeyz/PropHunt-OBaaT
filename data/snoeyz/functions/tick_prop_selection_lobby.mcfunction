execute as @a[tag=!prop-amethyst_cluster,predicate=snoeyz:stepping_on_purple_wool] run function snoeyz:trigger_prop/amethyst_cluster
execute as @a[tag=!prop-anvil,predicate=snoeyz:stepping_on_gray_wool] run function snoeyz:trigger_prop/anvil
execute as @a[tag=!prop-barrel,predicate=snoeyz:stepping_on_pink_wool] run function snoeyz:trigger_prop/barrel
execute as @a[tag=!prop-campfire,predicate=snoeyz:stepping_on_brown_wool] run function snoeyz:trigger_prop/campfire
execute as @a[tag=!prop-candle,predicate=snoeyz:stepping_on_orange_wool] run function snoeyz:trigger_prop/candle
execute as @a[tag=!prop-composter,predicate=snoeyz:stepping_on_red_wool] run function snoeyz:trigger_prop/composter
execute as @a[tag=!prop-crafting_table,predicate=snoeyz:stepping_on_lime_wool] run function snoeyz:trigger_prop/crafting_table
execute as @a[tag=!prop-flowering_azaleas,predicate=snoeyz:stepping_on_magenta_wool] run function snoeyz:trigger_prop/flowering_azalea
execute as @a[tag=!prop-iron_trapdoor,predicate=snoeyz:stepping_on_white_wool] run function snoeyz:trigger_prop/iron_trapdoor
execute as @a[tag=!prop-lantern,predicate=snoeyz:stepping_on_light_gray_wool] run function snoeyz:trigger_prop/lantern
execute as @a[tag=!prop-torch,predicate=snoeyz:stepping_on_yellow_wool] run function snoeyz:trigger_prop/torch
execute as @a[tag=!prop-bookshelf,predicate=snoeyz:stepping_on_blue_wool] run function snoeyz:trigger_prop/bookshelf
execute as @a[tag=!prop-sugar_cane,predicate=snoeyz:stepping_on_green_wool] run function snoeyz:trigger_prop/sugar_cane

execute as @a[tag=!prop-random,predicate=snoeyz:stepping_on_tinted_glass] run function snoeyz:trigger_prop/random
execute as @a[tag=prop-random,predicate=!snoeyz:stepping_on_tinted_glass] run tag @s remove prop-random

execute if score .lock snoeyz.rand_prop_selector matches 0.. run scoreboard players remove .lock snoeyz.rand_prop_selector 1
execute if score .lock snoeyz.rand_prop_selector matches -1 run scoreboard players set .lock snoeyz.rand_prop_selector 11
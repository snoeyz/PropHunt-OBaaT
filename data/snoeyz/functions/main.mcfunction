tellraw @a[scores={prophunt_reset_game=1}] ["",{"text":"Are you sure you want to reset the game?","bold":true,"color":"red"}," if so, type: ",{"text":"/trigger prophunt_reset_game set 2","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger prophunt_reset_game set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to run","color":"gold"}]}}]
execute if entity @p[scores={prophunt_reset_game=2..}] run tellraw @a {"text":"Game Reset!","color":"gold"}
execute if entity @p[scores={prophunt_reset_game=2..}] run function snoeyz:reset_game
scoreboard players reset @a prophunt_reset_game
execute if score .lock snoeyz.gamestate matches 1.. run scoreboard players enable @a prophunt_reset_game

tag @a[tag=in_team_lobby] remove in_team_lobby

execute if score .lock snoeyz.gamestate matches 1 run function snoeyz:tick_team_lobby
execute if score .lock snoeyz.gamestate matches 2 run function snoeyz:tick_prop_selection_lobby
execute unless score .lock snoeyz.gamestate matches 2 run kill @e[type=armor_stand,tag=propselection-stands]
execute unless score .lock snoeyz.gamestate matches 1 run kill @e[type=armor_stand,tag=begingame-stand]
execute store result score .lock snoeyz.props_remaining run team list props
execute if score .lock snoeyz.gamestate matches 4 as @a[team=props,predicate=!snoeyz:remaining_prop] run function snoeyz:player_found
execute if score .lock snoeyz.gamestate matches 4 if score .lock snoeyz.props_remaining matches 0 run function snoeyz:end_game
execute if score .lock snoeyz.gamestate matches 4 run gamemode spectator @a[team=!props,team=!seekers]
kill @e[type=falling_block,tag=hiding-props]

execute if score .lock snoeyz.gamestate matches 4 if score .lock snoeyz.prop_tell_timer matches 0 at @r[team=props] run particle minecraft:ambient_entity_effect ~ ~0.5 ~
execute if score .lock snoeyz.gamestate matches 4 if score .lock snoeyz.prop_tell_timer matches 0.. run scoreboard players remove .lock snoeyz.prop_tell_timer 1
execute if score .lock snoeyz.gamestate matches 4 if score .lock snoeyz.prop_tell_timer matches -1 run scoreboard players operation .lock snoeyz.prop_tell_timer = .lock snoeyz.options.prop_tell_frequency

execute if score .lock snoeyz.gamestate matches 2.. as @a[gamemode=!creative,gamemode=!spectator,team=!seekers,team=!props] run gamemode spectator @s

execute as @a[scores={snoeyz.prop.amethyst_cluster=1..}] run function snoeyz:trigger_prop/amethyst_cluster
execute as @a[scores={snoeyz.prop.anvil=1..}] run function snoeyz:trigger_prop/anvil
execute as @a[scores={snoeyz.prop.barrel=1..}] run function snoeyz:trigger_prop/barrel
execute as @a[scores={snoeyz.prop.campfire=1..}] run function snoeyz:trigger_prop/campfire
execute as @a[scores={snoeyz.prop.candle=1..}] run function snoeyz:trigger_prop/candle
execute as @a[scores={snoeyz.prop.composter=1..}] run function snoeyz:trigger_prop/composter
execute as @a[scores={snoeyz.prop.crafting_table=1..}] run function snoeyz:trigger_prop/crafting_table
execute as @a[scores={snoeyz.prop.flowering_azaleas=1..}] run function snoeyz:trigger_prop/flowering_azalea
execute as @a[scores={snoeyz.prop.iron_trapdoor=1..}] run function snoeyz:trigger_prop/iron_trapdoor
execute as @a[scores={snoeyz.prop.lantern=1..}] run function snoeyz:trigger_prop/lantern
execute as @a[scores={snoeyz.prop.torch=1..}] run function snoeyz:trigger_prop/torch
execute as @a[scores={snoeyz.prop.bookshelf=1..}] run function snoeyz:trigger_prop/bookshelf
execute as @a[scores={snoeyz.prop.sugar_cane=1..}] run function snoeyz:trigger_prop/sugar_cane

execute as @a[predicate=snoeyz:hiding-amethyst_cluster] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:amethyst_cluster"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-anvil] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-barrel] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrel"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-composter] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:composter"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-campfire] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:campfire"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-candle] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:red_candle"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-crafting_table] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:crafting_table"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-flowering_azalea] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:flowering_azalea"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-iron_trapdoor] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_trapdoor"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-lantern] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lantern"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-torch] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:torch"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-bookshelf] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:bookshelf"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @a[predicate=snoeyz:hiding-sugar_cane] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sugar_cane"},Time:1,NoGravity:1b,Tags:["hiding-props"]}

tag @a[predicate=snoeyz:hiding,tag=!hiding_player] add hiding-player
tag @a[predicate=!snoeyz:hiding,tag=hiding_player] remove hiding-player

execute if score .lock snoeyz.team_lobby_countdown matches 0.. run scoreboard players remove .lock snoeyz.team_lobby_countdown 1
execute if score .lock snoeyz.team_lobby_countdown matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.team_lobby_countdown
execute if score .lock snoeyz.team_lobby_countdown matches 99 run tellraw @a ["",{"text":"Game Begins In: ","color":"gold"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.team_lobby_countdown matches 80 run tellraw @a ["",{"text":"Game Begins In: ","color":"gold"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.team_lobby_countdown matches 60 run tellraw @a ["",{"text":"Game Begins In: ","color":"gold"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.team_lobby_countdown matches 40 run tellraw @a ["",{"text":"Game Begins In: ","color":"gold"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.team_lobby_countdown matches 20 run tellraw @a ["",{"text":"Game Begins In: ","color":"gold"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.prop_selection_time matches 0 run function snoeyz:start_hiding
execute if score .lock snoeyz.prop_selection_time matches 0.. run scoreboard players remove .lock snoeyz.prop_selection_time 1
execute if score .lock snoeyz.prop_selection_time matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.prop_selection_time
execute if score .lock snoeyz.prop_selection_time matches 200 run title @a[team=props] title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"10","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 180 run title @a[team=props] title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"9","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 160 run title @a[team=props] title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"8","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 140 run title @a[team=props] title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"7","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 120 run title @a[team=props] title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"6","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 100 run title @a title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 80 run title @a title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 60 run title @a title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 40 run title @a title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 20 run title @a title ["",{"text":"Props Hide In: ","color":"gold"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.hiding_time matches 0 run function snoeyz:start_seeking
execute if score .lock snoeyz.hiding_time matches 0.. run scoreboard players remove .lock snoeyz.hiding_time 1
execute if score .lock snoeyz.hiding_time matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.hiding_time
execute if score .lock snoeyz.hiding_time matches 200 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"10","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 180 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"9","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 160 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"8","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 140 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"7","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 120 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"6","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 100 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 80 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 60 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 40 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 20 run title @a title ["",{"text":"Seekers Start In: ","color":"gold"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.play_time matches 0.. run scoreboard players remove .lock snoeyz.play_time 1
execute if score .lock snoeyz.play_time matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.play_time
execute if score .lock snoeyz.play_time matches 200 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"10","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 180 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"9","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 160 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"8","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 140 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"7","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 120 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"6","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 100 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 80 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 60 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 40 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 20 run title @a title ["",{"text":"Time's Up In: ","color":"gold"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.display_time_seconds matches 1.. run function snoeyz:display_time_remaining

execute as @a[team=seekers,predicate=!snoeyz:holding-snowball,scores={seeker_shot_cooldown=1..}] run scoreboard players remove @s seeker_shot_cooldown 1
execute as @a[team=seekers,predicate=!snoeyz:holding-snowball,scores={seeker_shot_cooldown=0}] run function snoeyz:give_snowball

execute if entity @a[scores={prophunt_new_game=1..}] run function snoeyz:start_new_game

execute if score .lock snoeyz.hiding_time matches 0.. as @a[team=!seekers,predicate=!snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air
execute if score .lock snoeyz.hiding_time matches 0.. as @a[team=seekers,predicate=!snoeyz:holding-snowball] unless entity @s[predicate=snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air
execute if score .lock snoeyz.gamestate matches 1.. as @a[team=!seekers,predicate=!snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air
execute if score .lock snoeyz.gamestate matches 1.. as @a[team=seekers,predicate=!snoeyz:holding-snowball] unless entity @s[predicate=snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air

execute unless score .lock snoeyz.gamestate matches 1 if score .lock snoeyz.team_lobby_countdown matches 0.. run scoreboard players set .lock snoeyz.team_lobby_countdown -1
execute unless score .lock snoeyz.gamestate matches 2 if score .lock snoeyz.prop_selection_time matches 0.. run scoreboard players set .lock snoeyz.prop_selection_time -1
execute unless score .lock snoeyz.gamestate matches 3 if score .lock snoeyz.hiding_time matches 0.. run scoreboard players set .lock snoeyz.hiding_time -1
execute unless score .lock snoeyz.gamestate matches 4 if score .lock snoeyz.play_time matches 0.. run scoreboard players set .lock snoeyz.play_time -1

scoreboard players reset @a prophunt_new_game
execute if score .lock snoeyz.gamestate matches 0 run scoreboard players enable @a prophunt_new_game
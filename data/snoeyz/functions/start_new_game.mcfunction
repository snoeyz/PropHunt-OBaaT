scoreboard players reset @a prophunt_new_game
execute as @a[scores={prophunt_new_game=1..}] run scoreboard players set @s prophunt_new_game 0

execute as @a run function snoeyz:clear_chosen_prop_tags

fill -20 200 -20 20 210 20 minecraft:barrier hollow

fill -20 200 -20 20 200 -5 minecraft:red_concrete
fill -20 200 20 20 200 5 minecraft:cyan_concrete

tp @a 0 201 0

setblock 5 201 0 minecraft:blue_ice
setblock 5 202 0 minecraft:lever[face=floor,facing=north,powered=false]
summon minecraft:armor_stand 5 202.25 0 {Invisible:true,NoGravity:true,Marker:true,CustomName:'{"text":"Begin Game"}',CustomNameVisible:true,Tags:["begingame-stand"]}

setblock -19 202 0 spruce_sign[rotation=12]
data merge block -19 202 0 {Text2:"{\"text\":\"Options\",\"color\":\"dark_aqua\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:run_options\"}}",GlowingText:1b}

execute as @a run function snoeyz:clear_hands_and_head
scoreboard players set .lock snoeyz.gamestate 1
gamemode adventure @a
function snoeyz:clear_map
fill -20 200 -20 20 210 20 minecraft:barrier hollow

fill 2 200 3 1 200 8 minecraft:blue_wool
fill -1 200 3 -2 200 8 minecraft:purple_wool
fill -4 200 3 -5 200 8 minecraft:gray_wool
fill -7 200 3 -8 200 8 minecraft:pink_wool
fill -10 200 3 -11 200 8 minecraft:brown_wool
fill -13 200 3 -14 200 8 minecraft:orange_wool
fill -16 200 3 -17 200 8 minecraft:red_wool

fill 2 200 12 1 200 17 minecraft:green_wool
fill -1 200 12 -2 200 17 minecraft:lime_wool
fill -4 200 12 -5 200 17 minecraft:magenta_wool
fill -7 200 12 -8 200 17 minecraft:white_wool
fill -10 200 12 -11 200 17 minecraft:light_gray_wool
fill -13 200 12 -14 200 17 minecraft:yellow_wool
fill -16 200 12 -17 200 17 minecraft:tinted_glass

summon minecraft:armor_stand 2.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Bookshelf"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -1.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Amethyst Cluster"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -4.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Anvil"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -7.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Barrel"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -10.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Campfire"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -13.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Candle"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -16.0 202.5 5.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Composter"}',CustomNameVisible:true,Tags:["propselection-stands"]}

summon minecraft:armor_stand 2.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Sugar Cane"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -1.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Crafting Table"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -4.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Flowering Azaleas"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -7.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Iron Trapdoor"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -10.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Lantern"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -13.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Torch"}',CustomNameVisible:true,Tags:["propselection-stands"]}
summon minecraft:armor_stand -16.0 202.5 14.5 {Marker:true,Invisible:true,NoGravity:true,CustomName:'{"text":"Random Prop"}',CustomNameVisible:true,Tags:["propselection-stands"]}

tp @a[team=props] 0 201 10 0 0

#setup seeker waiting room
fill -20 200 -20 20 210 0 minecraft:black_concrete hollow
#fill -20 200 0 20 210 0 minecraft:black_concrete

tp @a[team=seekers] 0 201 -10 0 0

scoreboard players operation .lock snoeyz.prop_selection_time = .lock snoeyz.options.prop_selection_time
scoreboard players set .lock snoeyz.gamestate 2
scoreboard players set .lock snoeyz.team_lobby_countdown -1

scoreboard players enable @a[team=props] snoeyz.prop.amethyst_cluster
scoreboard players enable @a[team=props] snoeyz.prop.anvil
scoreboard players enable @a[team=props] snoeyz.prop.barrel
scoreboard players enable @a[team=props] snoeyz.prop.campfire
scoreboard players enable @a[team=props] snoeyz.prop.candle
scoreboard players enable @a[team=props] snoeyz.prop.composter
scoreboard players enable @a[team=props] snoeyz.prop.crafting_table
scoreboard players enable @a[team=props] snoeyz.prop.flowering_azaleas
scoreboard players enable @a[team=props] snoeyz.prop.iron_trapdoor
scoreboard players enable @a[team=props] snoeyz.prop.lantern
scoreboard players enable @a[team=props] snoeyz.prop.torch
scoreboard players enable @a[team=props] snoeyz.prop.bookshelf
scoreboard players enable @a[team=props] snoeyz.prop.sugar_cane
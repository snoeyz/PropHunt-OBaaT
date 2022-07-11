setblock 0 0 0 minecraft:air
setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:0b}},{Slot:1b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:1b}},{Slot:2b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:2b}},{Slot:3b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:3b}},{Slot:4b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:4b}},{Slot:5b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:5b}},{Slot:6b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:6b}},{Slot:7b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:7b}},{Slot:8b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:8b}},{Slot:9b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:9b}},{Slot:10b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:10b}},{Slot:11b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:11b}},{Slot:12b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:12b}},{Slot:13b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:13b}}]}

scoreboard objectives add snoeyz.gamestate dummy "Prop Hunt: Game State"
scoreboard players set .lock snoeyz.gamestate 0
scoreboard objectives add snoeyz.team_lobby_countdown dummy "Prop Hunt: Lobby Countdown"
scoreboard players set .lock snoeyz.team_lobby_countdown -1
scoreboard objectives add snoeyz.prop_selection_time dummy "Prop Hunt: Prop Selection Time"
scoreboard players set .lock snoeyz.prop_selection_time -1
scoreboard objectives add snoeyz.display_time_minutes dummy "Prop Hunt: Display Time Minutes"
scoreboard players set .lock snoeyz.display_time_minutes -1
scoreboard objectives add snoeyz.display_time_seconds dummy "Prop Hunt: Display Time Seconds"
scoreboard players set .lock snoeyz.display_time_seconds -1
scoreboard objectives add snoeyz.hiding_time dummy "Prop Hunt: Hiding Time"
scoreboard players set .lock snoeyz.hiding_time -1
scoreboard objectives add snoeyz.play_time dummy "Prop Hunt: Play Time"
scoreboard players set .lock snoeyz.play_time -1
scoreboard objectives add snoeyz.props_remaining dummy "Prop Hunt: Props Remaining"
scoreboard players set .lock snoeyz.props_remaining 0
scoreboard objectives add snoeyz.prop_tell_timer dummy "Prop Hunt: Prop Tell Timer"
scoreboard players set .lock snoeyz.prop_tell_timer 0
scoreboard objectives add snoeyz.rand_prop_selector dummy "Prop Hunt: Random Prop Selector"
scoreboard players set .lock snoeyz.rand_prop_selector 0
scoreboard objectives add seeker_shot_cooldown dummy "Prop Hunt: Seeker Shot Cooldown"
function snoeyz:create_teams

gamerule doMobSpawning false


scoreboard objectives add snoeyz.ticks_per_second dummy "Prop Hunt: Ticks Per Second"
scoreboard objectives add snoeyz.seconds_per_minute dummy "Prop Hunt: Seconds Per Minute"
scoreboard players set .lock snoeyz.ticks_per_second 20
scoreboard players set .lock snoeyz.seconds_per_minute 60

scoreboard objectives remove prophunt_new_game
scoreboard objectives add prophunt_new_game trigger "Prop Hunt: Trigger New Game"
scoreboard players enable @a prophunt_new_game

scoreboard objectives remove prophunt_reset_game
scoreboard objectives add prophunt_reset_game trigger "Prop Hunt: Reset Game State"
scoreboard players enable @a prophunt_reset_game

scoreboard objectives add snoeyz.prop.amethyst_cluster trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.anvil trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.barrel trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.campfire trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.candle trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.composter trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.crafting_table trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.flowering_azaleas trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.iron_trapdoor trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.lantern trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.torch trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.bookshelf trigger "Prop Hunt Prop: Choose New Prop"
scoreboard objectives add snoeyz.prop.sugar_cane trigger "Prop Hunt Prop: Choose New Prop"

scoreboard players reset @a snoeyz.prop.amethyst_cluster
scoreboard players reset @a snoeyz.prop.anvil
scoreboard players reset @a snoeyz.prop.barrel
scoreboard players reset @a snoeyz.prop.campfire
scoreboard players reset @a snoeyz.prop.candle
scoreboard players reset @a snoeyz.prop.composter
scoreboard players reset @a snoeyz.prop.crafting_table
scoreboard players reset @a snoeyz.prop.flowering_azaleas
scoreboard players reset @a snoeyz.prop.iron_trapdoor
scoreboard players reset @a snoeyz.prop.lantern
scoreboard players reset @a snoeyz.prop.torch
scoreboard players reset @a snoeyz.prop.bookshelf
scoreboard players reset @a snoeyz.prop.sugar_cane

scoreboard objectives add snoeyz.options.prop_selection_time dummy "Prop Hunt Options: Prop Selection Time"
scoreboard players set .lock snoeyz.options.prop_selection_time 600
scoreboard objectives add snoeyz.options.hiding_time dummy "Prop Hunt Options: Hiding Time"
scoreboard players set .lock snoeyz.options.hiding_time 1200
scoreboard objectives add snoeyz.options.play_time dummy "Prop Hunt Options: Play Time"
scoreboard players set .lock snoeyz.options.play_time 12000
scoreboard objectives add snoeyz.options.infect_mode dummy "Prop Hunt Options: Infect mode"
scoreboard players set .lock snoeyz.options.infect_mode 1
scoreboard objectives add snoeyz.options.shot_cooldown dummy "Prop Hunt Options: Seeker Shot Cooldown"
scoreboard players set .lock snoeyz.options.shot_cooldown 100
scoreboard objectives add snoeyz.options.prop_tell_frequency dummy "Prop Hunt Options: Prop Tell Frequency"
scoreboard players set .lock snoeyz.options.prop_tell_frequency 20

team empty props
team empty seekers
function snoeyz:clear_map
execute as @a run function snoeyz:clear_chosen_prop_tags
execute as @a run function snoeyz:clear_hands_and_head
kill @e[type=armor_stand]

setworldspawn -42 67 -34
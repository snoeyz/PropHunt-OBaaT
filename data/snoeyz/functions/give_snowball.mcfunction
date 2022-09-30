function snoeyz:clear_hands_and_head
give @s minecraft:snowball
scoreboard players operation @s seeker_shot_cooldown = .lock snoeyz.options.shot_cooldown
#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
# Title
title @a times 5 30 12
title @a title ["",{"text":"Fight!","color":"dark_purple","bold":true,"underlined": true}]
title @a subtitle ["",{"text":"Have Fun!","color":"light_purple","bold":true,"underlined": true}]

# Sounds
execute as @a[tag=IsInEnd] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 10 1 1
execute as @a[tag=IsInEnd] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 10 1 1

# Message to teleport
tellraw @a ["",{"text":"The fight started! ","color":"dark_purple"},{"text":"[CLICK HERE TO TELEPORT]","color":"light_purple","bold": true,"clickEvent": {"action": "run_command","value": "/trigger TpToEnd"}}]

# slightly increase the size of the platform to prevent people from falling
execute in the_end run fill 85 48 -2 98 48 2 obsidian

# Remove the barrier
execute in the_end run fill 103 47 3 91 52 -3 air replace barrier

# Score for running 'points/main'
scoreboard players set #FightOnGoing Temp 1

# Reset everyone's points
scoreboard players reset @a EndPoints
scoreboard players reset @a PointsObtainedWithDragonBreath

# Summon the slimes (only for crystals with obsidian under, to prevent the ones on the middle portal to be affected)
execute as @e[type=end_crystal] at @s if block ~ ~-2 ~ obsidian run function bcsmp:mobs/ai/ender_dragon_fight/spawn_crystal_slime

# Apply the points for the placed eyes (only for first fight)
execute as @a[scores={PlacedEyes=1..}] unless score #DragonDefeatedOnce Temp matches 1.. run function bcsmp:mobs/ai/ender_dragon_fight/points/eyes_points

# Apply bonus for respawning (only if we placed a crystal, to prevent everyone who didnt place to get it)
execute if entity @s[advancements={bcsmp:mobs/ender_dragon_fight/respawn_dragon=true,bcsmp:mobs/ender_dragon_fight/placed_crystal=true}] run function bcsmp:mobs/ai/ender_dragon_fight/points/respawn_points 
advancement revoke @a only bcsmp:mobs/ender_dragon_fight/respawn_dragon
advancement revoke @a only bcsmp:mobs/ender_dragon_fight/placed_crystal

# Reset time 
scoreboard players set #DragonFightSeconds Temp 0
scoreboard players set #DragonFightMinutes Temp 0

# Summon leaderboard armor stands
function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/summon_stands

# Clear the scheduled "kill_stands" function so that leaderboard armor stands don't get removed if another dragon was spawned
schedule clear bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/kill_stands

# Dragon abilities
scoreboard players set #LaserTime Temp 500
scoreboard players set #TPTime Temp 200
#------------------------------------------#
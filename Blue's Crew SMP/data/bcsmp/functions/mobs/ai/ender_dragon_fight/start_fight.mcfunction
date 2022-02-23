#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
title @a times 5 30 12
title @a title ["",{"text":"Fight!","color":"dark_purple","bold":true,"underlined": true}]
title @a subtitle ["",{"text":"Have Fun!","color":"light_purple","bold":true,"underlined": true}]
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 10 1 1
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 10 1 1
tellraw @a ["",{"text":"The fight started! ","color":"dark_purple"},{"text":"[CLICK HERE TO TELEPORT]","color":"light_purple","bold": true,"clickEvent": {"action": "run_command","value": "/trigger TpToEnd"}}]
execute in the_end run fill 85 48 -2 98 48 2 obsidian
execute in the_end run fill 103 47 3 91 52 -3 air replace barrier
scoreboard players set #FightOnGoing Temp 1
scoreboard players set @a EndPoints 0
execute as @e[type=end_crystal] at @s run function bcsmp:mobs/ai/ender_dragon_fight/spawn_crystal_slime
execute as @a[scores={PlacedEyes=1..}] unless score #DragonDefeatedOnce Temp matches 1.. run function bcsmp:mobs/ai/ender_dragon_fight/points/eyes_points

tellraw @s[advancements={bcsmp:mobs/ender_dragon_fight/respawn_dragon=true}] {"text":"Since you were the one to respawn the dragon, you start with some points!","color":"gray"}
scoreboard players set @s[advancements={bcsmp:mobs/ender_dragon_fight/respawn_dragon=true}] AddEndPoints 5
advancement revoke @s only bcsmp:mobs/ender_dragon_fight/respawn_dragon

function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/summon_stands

# Dragon attacks
scoreboard players set #LaserTime Temp 200
scoreboard players set #TPTime Temp 200
#------------------------------------------#
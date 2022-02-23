#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
title @a times 5 30 12
title @a title ["",{"text":"Dragon Killed","color":"dark_purple","bold":true,"underlined": true}]
title @a subtitle ["",{"text":"Well Played!","color":"light_purple","bold":true,"underlined": true}]
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 10 1 1
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 10 1 1
scoreboard players set #FightOnGoing Temp 0
scoreboard players set #DragonDefeatedOnce Temp 1
kill @e[type=end_crystal]
tp @e[tag=DestroyChecker] ~ ~-50 ~
function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/announce_leaderboard
scoreboard players set #DragonFightTicks Temp 0
scoreboard players set #DragonFightSeconds Temp 0
scoreboard players set #DragonFightMinutes Temp 0
scoreboard players set @a EndPoints 0
tag @a remove FinalHit
schedule function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/kill_stands 120s
#------------------------------------------#
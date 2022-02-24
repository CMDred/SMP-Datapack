#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
function bcsmp:mobs/ai/ender_dragon_fight/points/leaderboard/update_stands
scoreboard players reset #DragonFightTicks Temp
scoreboard players add #DragonFightSeconds Temp 1
execute if score #DragonFightSeconds Temp matches 60.. run function bcsmp:mobs/ai/ender_dragon_fight/points/minute
#------------------------------------------#
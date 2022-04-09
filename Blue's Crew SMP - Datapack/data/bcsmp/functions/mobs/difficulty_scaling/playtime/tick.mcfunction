#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------PLAYTIME-----------------#
scoreboard players add @s PlaytimeTicks 1
execute if score @s PlaytimeTicks matches 20.. run function bcsmp:mobs/difficulty_scaling/playtime/second
#------------------------------------------#
#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--RIGHT CLICKED WITH hoe ON STICKY PISTON-#
execute store result score #Count Temp run data get entity @s Item.Count
scoreboard players remove #Count Temp 1
execute store result entity @s Item.Count byte 1 run scoreboard players get #Count Temp
#------------------------------------------#

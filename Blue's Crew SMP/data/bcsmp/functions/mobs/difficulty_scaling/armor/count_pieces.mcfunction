#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------ARMOR-------------------#
scoreboard players set #PiecesCount Temp 0
execute if data entity @s ArmorItems[0].id run scoreboard players add #PiecesCount Temp 1
execute if data entity @s ArmorItems[1].id run scoreboard players add #PiecesCount Temp 1
execute if data entity @s ArmorItems[2].id run scoreboard players add #PiecesCount Temp 1
execute if data entity @s ArmorItems[3].id run scoreboard players add #PiecesCount Temp 1
#------------------------------------------#
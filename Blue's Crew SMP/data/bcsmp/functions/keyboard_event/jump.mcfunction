#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
tag @s add MoveUpdate
tag @s add Jumping
scoreboard players remove @s Energy 1
execute if score @s Energy matches ..0 run function stats:energy/exhausted

scoreboard players reset @s Jump
#------------------------------------------#
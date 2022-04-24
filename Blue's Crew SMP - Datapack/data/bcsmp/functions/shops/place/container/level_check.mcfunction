#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute if entity @s[tag=Level1] run function bcsmp:shops/place/container/level_1/check_limit
execute if entity @s[tag=Level2] run function bcsmp:shops/place/container/level_2/check_limit
execute if entity @s[tag=Level3] run function bcsmp:shops/place/container/level_3/check_limit
execute as @e[type=marker,tag=NewContainer] at @s run function bcsmp:shops/container/menu/container_main
tag @e[tag=NewContainer] remove NewContainer
#------------------------------------------#

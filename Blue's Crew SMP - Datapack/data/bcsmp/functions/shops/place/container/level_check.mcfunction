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
execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 40
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..1.2] run data modify entity @s TransferCooldown set value 40
#------------------------------------------#

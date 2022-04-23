#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute at @s as @e[type=marker,tag=Container,distance=..7] if score @s PlayerID = @p PlayerID at @s run function bcsmp:shops/container/menu/container_main
scoreboard players reset @s ContainerItems
#------------------------------------------#
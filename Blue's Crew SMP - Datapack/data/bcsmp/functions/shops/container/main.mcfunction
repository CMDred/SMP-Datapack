#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute as @a store result score @s ContainerItems run clear @s #bcsmp:shops/container_menu_items{ContainerMenu:1b}
execute as @a[scores={ContainerItems=1..}] at @s run function bcsmp:shops/container/menu/player_clicked

execute as @e[tag=Container] at @s unless block ~ ~ ~ barrel run function bcsmp:shops/container/break
#------------------------------------------#
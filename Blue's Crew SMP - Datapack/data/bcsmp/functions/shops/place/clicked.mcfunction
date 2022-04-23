#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tag @s add Placing
execute as @e[type=marker,tag=Placer] at @s if block ~ ~ ~ air run function bcsmp:shops/place/list
execute as @e[type=marker,tag=Placer] at @s unless block ~ ~ ~ air positioned ~ ~1 ~ run function bcsmp:shops/place/list
tag @a remove Placing
advancement revoke @s only bcsmp:shops/use_place_item
#------------------------------------------#

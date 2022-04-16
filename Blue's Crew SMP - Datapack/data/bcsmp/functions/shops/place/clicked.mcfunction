#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tag @s add Placing
execute as @e[tag=Placer] at @s run function bcsmp:shops/place/list
tag @a remove Placing
advancement revoke @s only bcsmp:shops/use_place_item
#------------------------------------------#

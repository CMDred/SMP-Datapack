#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tag @s add Clicker
scoreboard players set #Reach Temp 25
execute anchored eyes positioned ^ ^ ^ run function bcsmp:shops/container/switch_mode/raycast
tag @a remove Clicker
#------------------------------------------#
#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------CHECK-------------------#
execute if score @s ConsumedItemType matches 1 run function bcsmp:temperature/consume_items/powder_snow_bottle
execute if score @s ConsumedItemType matches 2 run function bcsmp:temperature/consume_items/lava_bottle
scoreboard players remove @s ConsumedItemTimer 1
#------------------------------------------#

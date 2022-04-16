#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute unless data entity @s data.Trades[0].buy{id:"minecraft:air"} unless data entity @s data.Trades[0].sell{id:"minecraft:air"} run tag @s add Success
execute if entity @s[tag=Success] run function bcsmp:shops/container/menu/level_2/buy/slot_1/success
execute unless entity @s[tag=Success] run function bcsmp:shops/container/buy/error1
tag @s remove Success
#------------------------------------------#
#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute unless data entity @s data.Trades[3].buy{id:"minecraft:air"} unless data entity @s data.Trades[3].sell{id:"minecraft:air"} run tag @s add Success
execute if entity @s[tag=Success] run function bcsmp:shops/container/menu/level_3/buy/slot_4/success
execute unless entity @s[tag=Success] run function bcsmp:shops/container/buy/error1
tag @s remove Success
#------------------------------------------#
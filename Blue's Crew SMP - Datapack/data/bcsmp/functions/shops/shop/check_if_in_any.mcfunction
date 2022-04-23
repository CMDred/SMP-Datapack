#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# @s should be the entity we're checking if it's a shop
scoreboard players reset @s IsInShopID
execute at @e[tag=Shop,distance=..20] run function bcsmp:shops/shop/check_if_entity_in
#------------------------------------------# 
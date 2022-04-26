#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# grab the ShopID of the shop we're standing in (if any)
scoreboard players reset @s IsInShopID
execute at @e[type=marker,tag=Shop,distance=..20] run function bcsmp:shops/shop/check_if_entity_in
execute if score @s IsInShopID matches 1.. run function bcsmp:shops/tools/shop_remover/get_shop
execute unless score @s IsInShopID matches 1.. run function bcsmp:shops/tools/shop_remover/error1
#------------------------------------------#

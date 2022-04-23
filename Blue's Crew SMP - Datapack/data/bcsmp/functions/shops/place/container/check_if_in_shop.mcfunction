#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
function bcsmp:shops/shop/check_if_in_any
execute if score @s IsInShopID matches 1.. run function bcsmp:shops/place/container/level_check
execute unless score @s IsInShopID matches 1.. run function bcsmp:shops/place/container/error1
#------------------------------------------#

#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players set #BonusSize Temp 7
function bcsmp:shops/shop/check_if_in_any
scoreboard players set #BonusSize Temp 0
execute unless score @s IsInShopID matches 1.. run function bcsmp:shops/place/shop/level_3/place
execute if score @s IsInShopID matches 1.. run function bcsmp:shops/place/shop/level_3/error1
#------------------------------------------#

#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# get the shop we're standing in
scoreboard players operation #Search ShopID = @s IsInShopID
execute as @e[type=marker,tag=Shop,distance=..20] if score @s ShopID = #Search ShopID run tag @s add IsInThisShop
# check if the found shop's owner is us
execute if score @s PlayerID = @e[type=marker,tag=IsInThisShop,limit=1] PlayerID run function bcsmp:shops/tools/shop_remover/remove_shop
execute unless score @s PlayerID = @e[type=marker,tag=IsInThisShop,limit=1] PlayerID run function bcsmp:shops/tools/shop_remover/error2
tag @e remove IsInThisShop
#------------------------------------------#

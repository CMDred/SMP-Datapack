#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players operation #Search ShopID = @s IsInShopID
execute as @e[type=marker,tag=Shop,distance=..20] if score @s ShopID = #Search ShopID run tag @s add ThisShop
execute if score @e[type=marker,tag=ThisShop,limit=1] PlayerID = @a[tag=Placing,limit=1] PlayerID run function bcsmp:shops/place/container/level_check
execute unless score @e[type=marker,tag=ThisShop,limit=1] PlayerID = @a[tag=Placing,limit=1] PlayerID run function bcsmp:shops/place/container/error3
tag @e remove ThisShop
#------------------------------------------#

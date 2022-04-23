#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute if entity @s[tag=ShopPlace] run function bcsmp:shops/place/shop/level_check
execute if entity @s[tag=ContainerPlace] run function bcsmp:shops/place/container/check_if_in_shop
execute if entity @s[tag=StoragePlace] run function bcsmp:shops/place/storage/check_type
kill @s
#------------------------------------------#

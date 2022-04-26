#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute at @e[type=marker,tag=IsInThisShop] run particle explosion
execute at @e[type=marker,tag=IsInThisShop,tag=Level1] run loot spawn ~ ~ ~ loot bcsmp:shops/shop_placer/level_1
execute at @e[type=marker,tag=IsInThisShop,tag=Level2] run loot spawn ~ ~ ~ loot bcsmp:shops/shop_placer/level_2
execute at @e[type=marker,tag=IsInThisShop,tag=Level3] run loot spawn ~ ~ ~ loot bcsmp:shops/shop_placer/level_3
kill @e[type=marker,tag=IsInThisShop]
tellraw @s {"text":"You removed this shop!","color":"green"}
playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
#------------------------------------------#

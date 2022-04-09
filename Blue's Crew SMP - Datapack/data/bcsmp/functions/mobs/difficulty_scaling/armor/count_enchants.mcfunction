#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------ARMOR-------------------#
scoreboard players set #EnchantCount Temp 0
execute if data entity @s ArmorItems[0].tag.Enchantments run scoreboard players add #EnchantCount Temp 1
execute if data entity @s ArmorItems[1].tag.Enchantments run scoreboard players add #EnchantCount Temp 1
execute if data entity @s ArmorItems[2].tag.Enchantments run scoreboard players add #EnchantCount Temp 1
execute if data entity @s ArmorItems[3].tag.Enchantments run scoreboard players add #EnchantCount Temp 1
#------------------------------------------#
#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------ARMOR-------------------#
data modify entity @s ArmorItems set value [{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}]
item modify entity @s armor.head bcsmp:mobs/difficulty_scaling/armor/enchants/prot_1_or_2
function bcsmp:mobs/difficulty_scaling/armor/count_enchants
execute unless score #EnchantCount Temp matches 2.. run item modify entity @s armor.chest bcsmp:mobs/difficulty_scaling/armor/enchants/prot_1_or_2
function bcsmp:mobs/difficulty_scaling/armor/count_enchants
execute unless score #EnchantCount Temp matches 2.. run item modify entity @s armor.legs bcsmp:mobs/difficulty_scaling/armor/enchants/prot_1_or_2
function bcsmp:mobs/difficulty_scaling/armor/count_enchants
execute unless score #EnchantCount Temp matches 2.. run item modify entity @s armor.feet bcsmp:mobs/difficulty_scaling/armor/enchants/prot_1_or_2
function bcsmp:mobs/difficulty_scaling/armor/count_enchants
execute unless score #EnchantCount Temp matches 2 run data modify entity @s ArmorItems[0].tag.Enchantments set value [{id:"minecraft:protection",lvl:1s}]
function bcsmp:mobs/difficulty_scaling/armor/count_enchants
execute if score #EnchantCount Temp matches 1 run data modify entity @s ArmorItems[3].tag.Enchantments set value [{id:"minecraft:protection",lvl:1s}]
function bcsmp:mobs/difficulty_scaling/armor/count_enchants
#------------------------------------------#
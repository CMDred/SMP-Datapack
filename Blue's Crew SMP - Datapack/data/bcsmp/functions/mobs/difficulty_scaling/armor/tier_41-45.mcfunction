#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------ARMOR-------------------#
data modify entity @s ArmorItems set value [{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}]
scoreboard players set @s FullChance 1
item modify entity @s armor.head bcsmp:mobs/difficulty_scaling/armor/enchants/prot_2_or_3
item modify entity @s armor.chest bcsmp:mobs/difficulty_scaling/armor/enchants/prot_2_or_3
item modify entity @s armor.legs bcsmp:mobs/difficulty_scaling/armor/enchants/prot_2_or_3
item modify entity @s armor.feet bcsmp:mobs/difficulty_scaling/armor/enchants/prot_2_or_3
#------------------------------------------#
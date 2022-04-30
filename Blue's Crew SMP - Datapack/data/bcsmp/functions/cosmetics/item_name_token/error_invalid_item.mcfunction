#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------CHECK-------------------#
tellraw @s {"text":"You cannot use the token to rename this item","color":"red"}
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5 1
loot replace entity @s weapon.mainhand loot bcsmp:other/item_name_token
#------------------------------------------#

#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------CHECK-------------------#
item modify entity @s weapon.offhand bcsmp:item_name_token/set_item_name
item replace entity @s weapon.mainhand with air
tellraw @s [{"text":"Item Name Token >> ","color":"gold"},{"text":"You have successfully renamed your item to '","color":"white"},{"nbt":"TextStorage","storage":"bcsmp:item_name_token","interpret":true},{"text":"'","color":"white"}]
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 2 1
#------------------------------------------#

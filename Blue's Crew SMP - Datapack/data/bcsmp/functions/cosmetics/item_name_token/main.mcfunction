#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------CHECK-------------------#
execute as @a[predicate=bcsmp:holding_item_name_token] if data entity @s SelectedItem.tag.pages run function bcsmp:cosmetics/item_name_token/check_content
execute if entity @a[predicate=bcsmp:holding_item_name_token] run schedule function bcsmp:cosmetics/item_name_token/main 1t
#------------------------------------------#

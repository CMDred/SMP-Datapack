#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
#Note: I store ItemDamage because the actual Damage of the wfoas isn't accurate, it's only the same percentage.
execute store result score #TakeDurability Temp run data get entity @s SelectedItem.tag.ItemDamage

execute if predicate bcsmp:right_click/take_durability/has_unbreaking_1 if predicate bcsmp:right_click/take_durability/rng_for_unbreaking_1 run scoreboard players remove #TakeDurability Temp 1
execute if predicate bcsmp:right_click/take_durability/has_unbreaking_2 if predicate bcsmp:right_click/take_durability/rng_for_unbreaking_2 run scoreboard players remove #TakeDurability Temp 1
execute if predicate bcsmp:right_click/take_durability/has_unbreaking_3 if predicate bcsmp:right_click/take_durability/rng_for_unbreaking_3 run scoreboard players remove #TakeDurability Temp 1

execute store result storage bcsmp:change_durability ItemDamage int 1 run scoreboard players add #TakeDurability Temp 1
item modify entity @s weapon.mainhand bcsmp:right_click/change_durability
#------------------------------------------#

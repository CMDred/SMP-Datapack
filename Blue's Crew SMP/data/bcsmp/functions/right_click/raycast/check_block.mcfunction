#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------CHECK WHAT BLOCK WE HIT----------#
## 1 = concrete powder
## 2 = crops (hoes)
## 3 = piston (slime_ball)
## 4 = sticky_piston (axes)
execute if score #SearchFor Temp matches 1 if block ~ ~ ~ #minecraft:concrete_powders run tag @s add SugarOnConcrete
execute if score #SearchFor Temp matches 1 if block ~ ~ ~ #minecraft:concrete_powders if entity @s[tag=!AimsAtRightBlockWithRightItem] run function bcsmp:right_click/raycast/raycast_enter_with_right_item

execute if score #SearchFor Temp matches 2 if block ~ ~ ~ #bcsmp:crops[age=7] run tag @s add HoesOnCrop
execute if score #SearchFor Temp matches 2 if block ~ ~ ~ #bcsmp:crops[age=7] if entity @s[tag=!AimsAtRightBlockWithRightItem] run function bcsmp:right_click/raycast/raycast_enter_with_right_item

execute if score #SearchFor Temp matches 2 if block ~ ~ ~ minecraft:beetroots[age=3] run tag @s add HoesOnCrop
execute if score #SearchFor Temp matches 2 if block ~ ~ ~ minecraft:beetroots[age=3] if entity @s[tag=!AimsAtRightBlockWithRightItem] run function bcsmp:right_click/raycast/raycast_enter_with_right_item

execute if score #SearchFor Temp matches 3 if block ~ ~ ~ minecraft:piston run tag @s add SlimeballOnPiston
execute if score #SearchFor Temp matches 3 if block ~ ~ ~ minecraft:piston if entity @s[tag=!AimsAtRightBlockWithRightItem] run function bcsmp:right_click/raycast/raycast_enter_with_right_item

execute if score #SearchFor Temp matches 4 if block ~ ~ ~ minecraft:sticky_piston run tag @s add AxesOnStickyPiston
execute if score #SearchFor Temp matches 4 if block ~ ~ ~ minecraft:sticky_piston if entity @s[tag=!AimsAtRightBlockWithRightItem] run function bcsmp:right_click/raycast/raycast_enter_with_right_item
#------------------------------------------#

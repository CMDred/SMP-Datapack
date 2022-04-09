#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------CHECK WHAT BLOCK WE HIT----------#
## 1 = concrete powder
## 2 = crops
## 3 = piston (slime_ball)
## 4 = sticky_piston (axes)
#execute if score #SearchFor Temp matches 1 unless block ~ ~ ~ #minecraft:concrete_powders run tag @s remove SugarOnConcrete
#execute if score #SearchFor Temp matches 1 unless block ~ ~ ~ #minecraft:concrete_powders run function bcsmp:right_click/raycast/raycast_leave_with_right_item

execute if score #SearchFor Temp matches 2 unless block ~ ~ ~ #bcsmp:crops[age=7] unless block ~ ~ ~ minecraft:beetroots[age=3] run tag @s remove HoesOnCrop
execute if score #SearchFor Temp matches 2 unless block ~ ~ ~ #bcsmp:crops[age=7] unless block ~ ~ ~ minecraft:beetroots[age=3] run function bcsmp:right_click/raycast/raycast_leave_with_right_item

execute if score #SearchFor Temp matches 3 unless block ~ ~ ~ minecraft:piston run tag @s remove SlimeballOnPiston
execute if score #SearchFor Temp matches 3 unless block ~ ~ ~ minecraft:piston run function bcsmp:right_click/raycast/raycast_leave_with_right_item

execute if score #SearchFor Temp matches 4 unless block ~ ~ ~ minecraft:sticky_piston run tag @s remove AxesOnStickyPiston
execute if score #SearchFor Temp matches 4 unless block ~ ~ ~ minecraft:sticky_piston run function bcsmp:right_click/raycast/raycast_leave_with_right_item

# execute if score #SearchFor Temp matches 5 if block ~ ~ ~ minecraft:... run tag @s remove ...On...
#------------------------------------------#

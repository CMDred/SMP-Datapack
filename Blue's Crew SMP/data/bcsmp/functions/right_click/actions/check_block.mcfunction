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

execute if score #SearchFor Temp matches 1 if block ~ ~ ~ #minecraft:concrete_powders run function bcsmp:right_click/actions/sugar_on_concrete/start
execute if score #SearchFor Temp matches 2 if block ~ ~ ~ #minecraft:crops[age=7] run function bcsmp:right_click/actions/hoes_on_crops/start
execute if score #SearchFor Temp matches 3 if block ~ ~ ~ minecraft:piston run function bcsmp:right_click/actions/slimeball_on_piston/start
execute if score #SearchFor Temp matches 4 if block ~ ~ ~ minecraft:sticky_piston run function bcsmp:right_click/actions/axes_on_piston/start
function bcsmp:right_click/slot_changed
#------------------------------------------#
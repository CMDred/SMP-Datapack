#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
execute in minecraft:overworld run forceload add 0 0 0 0
execute in minecraft:overworld run forceload add 10000 10000

execute in minecraft:overworld run forceload remove 29999977 29832
execute in minecraft:overworld run forceload add 29999977 29832
execute in minecraft:overworld run fill 29999976 0 29831 29999980 2 29833 bedrock

#Multiplayer Storage (using custom dimension)
scoreboard objectives add MPStorage dummy
execute in bcsmp:mp_storage run forceload add 0 0
execute unless entity d28b2115-c99e-84c2-6e45-963d34071d44 in bcsmp:mp_storage run summon item_frame 0 0 0 {UUID:[I;-762633963,-912358206,1850054205,872881476],Fixed:1}

team add NoCol
team modify NoCol collisionRule never

scoreboard objectives add PlayerID dummy
scoreboard objectives add Temp dummy

scoreboard objectives add MotionSpeed dummy
scoreboard objectives add Motion dummy
scoreboard objectives add MotionX dummy
scoreboard objectives add MotionY dummy
scoreboard objectives add MotionZ dummy

scoreboard objectives add TickTimer dummy
scoreboard objectives add Timeout dummy

scoreboard objectives add Constant dummy
scoreboard players set c-1 Constant -1
scoreboard players set c2 Constant 2
scoreboard players set c3 Constant 3
scoreboard players set c4 Constant 4
scoreboard players set c5 Constant 5
scoreboard players set c6 Constant 6
scoreboard players set c8 Constant 8
scoreboard players set c10 Constant 10
scoreboard players set c12 Constant 12
scoreboard players set c15 Constant 15
scoreboard players set c16 Constant 16
scoreboard players set c17 Constant 17
scoreboard players set c20 Constant 20
scoreboard players set c20 Constant 21
scoreboard players set c22 Constant 22
scoreboard players set c24 Constant 24
scoreboard players set c25 Constant 25
scoreboard players set c30 Constant 30
scoreboard players set c34 Constant 34
scoreboard players set c35 Constant 35
scoreboard players set c40 Constant 40
scoreboard players set c50 Constant 50
scoreboard players set c51 Constant 51
scoreboard players set c59 Constant 59
scoreboard players set c60 Constant 60
scoreboard players set c80 Constant 80
scoreboard players set c90 Constant 90
scoreboard players set c100 Constant 100
scoreboard players set c110 Constant 110
scoreboard players set c114 Constant 114
scoreboard players set c120 Constant 120
scoreboard players set c125 Constant 125
scoreboard players set c360 Constant 360
scoreboard players set c500 Constant 500
scoreboard players set c1000 Constant 1000
scoreboard players set c3600 Constant 3600
scoreboard players set c10000 Constant 10000
scoreboard players set #lcg Constant 1103515245
scoreboard objectives add RandMath dummy
execute unless score #lcg RandMath matches ..0 unless score #lcg RandMath matches 1.. run function bcsmp:random/uuid_reset

scoreboard objectives add JoinGame minecraft.custom:minecraft.leave_game
scoreboard objectives add RightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add MainHand dummy
scoreboard objectives add OffHand dummy
scoreboard objectives add SneakDelay dummy
scoreboard objectives add Air dummy
#--------------MODULE RELOADS--------------#
function bcsmp:right_click/load
function bcsmp:advancements/load
function bcsmp:mobs/load
#-----------------MESSAGE------------------#
tellraw @a ["",{"text":"BlueSMP =>","color":"green","bold":true},{"text":" Reload Successful.","color":"gray","italic":true}]
#------------------------------------------#


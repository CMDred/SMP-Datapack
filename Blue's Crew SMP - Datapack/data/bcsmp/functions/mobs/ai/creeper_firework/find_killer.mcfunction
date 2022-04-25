#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
scoreboard players operation #Search KillerID0 = @s KillerID0
scoreboard players operation #Search KillerID1 = @s KillerID1
scoreboard players operation #Search KillerID2 = @s KillerID2
execute as @a store result score @s KillerID0 run data get entity @s UUID[0]
execute as @a store result score @s KillerID1 run data get entity @s UUID[1]
execute as @a store result score @s KillerID2 run data get entity @s UUID[2]

execute as @a if score @s KillerID0 = #Search KillerID0 if score @s KillerID1 = #Search KillerID1 if score @s KillerID2 = #Search KillerID2 run advancement grant @s only bcsmp:custom_advancements/to_infinity_and_beyond
#------------------------------------------#
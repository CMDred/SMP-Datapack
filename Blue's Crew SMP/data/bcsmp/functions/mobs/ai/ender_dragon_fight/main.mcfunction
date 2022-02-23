#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute if score #DragonStartCooldown Temp matches 1.. run scoreboard players remove #DragonStartCooldown Temp 1
execute if score #DragonStartCooldown Temp matches 180 run tellraw @a {"text":"The fight will start in 9 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 160 run tellraw @a {"text":"The fight will start in 8 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 140 run tellraw @a {"text":"The fight will start in 7 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 120 run tellraw @a {"text":"The fight will start in 6 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 100 run tellraw @a {"text":"The fight will start in 5 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 80 run tellraw @a {"text":"The fight will start in 4 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 60 run tellraw @a {"text":"The fight will start in 3 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 40 run tellraw @a {"text":"The fight will start in 2 seconds!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 20 run tellraw @a {"text":"The fight will start in 1 second!","color":"dark_purple"}
execute if score #DragonStartCooldown Temp matches 1 run function bcsmp:mobs/ai/ender_dragon_fight/start_fight

scoreboard players enable @a TpToEnd
execute as @a[scores={TpToEnd=1..}] run function bcsmp:mobs/ai/ender_dragon_fight/tp_to_fight

execute if score #FightOnGoing Temp matches 1.. run function bcsmp:mobs/ai/ender_dragon_fight/points/main
#------------------------------------------#
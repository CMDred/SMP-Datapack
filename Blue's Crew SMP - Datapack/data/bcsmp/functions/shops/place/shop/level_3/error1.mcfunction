#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.barrel.open master @a[tag=Placing] ~ ~ ~ 1 2 1
tellraw @a[tag=Placing] [{"text":"You cannot place a ","color":"red"},{"text":"Level 3 Shop","color":"red"},{"text":" there!","color":"red"}]
particle dust 0.341 0.341 0.341 1 ~ ~ ~ 0.3 0.15 0.3 0.1 20 normal
#------------------------------------------#

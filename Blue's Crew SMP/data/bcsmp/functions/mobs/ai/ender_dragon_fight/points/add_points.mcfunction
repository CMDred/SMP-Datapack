#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
scoreboard players operation @s EndPoints += @s AddEndPoints
particle witch ~ ~ ~ 1 1 1 0.1 20 force
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"+","color": "dark_purple"},{"score":{"name": "@s","objective": "AddEndPoints"},"color": "light_purple"},{"text":" Point(s)!","color": "dark_purple"}]
scoreboard players reset @s AddEndPoints
clear @s dragon_breath
#------------------------------------------#
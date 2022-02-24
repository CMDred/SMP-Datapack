#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard players set @s PlacedEyes 0
scoreboard players set @s AddEndPoints 0
#-----------------MESSAGE------------------#
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"A ","obfuscated": true,"color": "aqua","bold": true},{"selector":"@s","color":"yellow","bold":true},{"text":" has joined the server for the first time! Welcome!","color":"green"},{"text":" A","obfuscated": true,"color": "aqua","bold": true}]
#------------------------------------------#
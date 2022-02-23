#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
scoreboard players operation #PlacedEyes Temp = @s PlacedEyes
scoreboard players operation @s AddEndPoints = #PlacedEyes Temp
tellraw @s ["",{"text":"BONUS!","color":"light_purple","bold": true},{"text":" Since you placed ","color":"dark_purple"},{"score":{"name": "#PlacedEyes","objective": "Temp"},"color": "light_purple"},{"text":" eyes of ender on the frame, you gain ","color":"dark_purple"},{"score":{"name": "#PlacedEyes","objective": "Temp"},"color": "light_purple"},{"text":" points!","color": "dark_purple"}]
#------------------------------------------#
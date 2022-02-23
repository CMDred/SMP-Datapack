#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players set #DragonStartCooldown Temp 400
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 10 1 1
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 10 1 1
tellraw @a ["",{"text":"ATTENTION PLAYERS!\n","color":"light_purple","bold":true,"underlined":true},{"text":" \n"},{"selector":"@s","color":"green","bold":true},{"text":" has started the ","color":"dark_purple"},{"text":"Dragon Fight","color":"light_purple","bold":true},{"text":"! The barrier will fall in 20 seconds!","color":"dark_purple"}]
#------------------------------------------#
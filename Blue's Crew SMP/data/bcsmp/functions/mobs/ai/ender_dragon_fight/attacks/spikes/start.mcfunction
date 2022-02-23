#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players reset #BeforeSpikes Temp
particle dragon_breath ~ ~ ~ 3 3 3 0.01 130 force
execute as @a[distance=..60,gamemode=!creative,gamemode=!spectator] at @s run summon evoker_fangs 
#------------------------------------------#
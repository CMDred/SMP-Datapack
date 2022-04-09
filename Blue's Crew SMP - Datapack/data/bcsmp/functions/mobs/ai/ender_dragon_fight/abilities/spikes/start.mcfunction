#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players reset #BeforeSpikes Temp
particle dragon_breath ~ ~ ~ 3 3 3 0.01 130 force
execute as @e[tag=ClawTarget] at @s run summon evoker_fangs ~ ~ ~
kill @e[tag=ClawTarget]
#------------------------------------------#
#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#-------------------LOOP-------------------#
scoreboard players add @e[type=wither] WitherTime 1
execute as @e[type=wither,tag=!WitherStasis,tag=!WitherAttacking,scores={WitherTime=25..}] if predicate bcsmp:random/r0.2 at @s run function bcsmp:wither_fight/start_attack
schedule function bcsmp:wither_fight/run 37
#------------------------------------------#
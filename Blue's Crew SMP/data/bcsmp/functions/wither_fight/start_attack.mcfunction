#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#------------------ATTACK------------------#
data modify entity @s Invul set value 205
summon marker ~ ~ ~ {Tags:["StasisPoint"]}
effect give @s slowness 10 127 true
effect give @s slow_falling 10 127 true
tag @s add WitherStasis
function bcsmp:wither_fight/stasis
schedule function bcsmp:wither_fight/launch_attack 200
#------------------------------------------#
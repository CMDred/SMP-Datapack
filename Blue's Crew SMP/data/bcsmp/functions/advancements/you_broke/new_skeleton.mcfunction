#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard players set in RandMath 120
scoreboard players set in1 RandMath 200
function bcsmp:random/range_lcg
scoreboard players operation @s YB_ArrowsLeft = out RandMath
tag @s add YB_Registered
#------------------------------------------#


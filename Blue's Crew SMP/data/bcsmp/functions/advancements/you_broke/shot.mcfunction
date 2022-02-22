#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard players remove @s YB_ArrowsLeft 1
execute if score @s YB_ArrowsLeft matches ..0 run function bcsmp:advancements/you_broke/run_out_of_arrows
#------------------------------------------#


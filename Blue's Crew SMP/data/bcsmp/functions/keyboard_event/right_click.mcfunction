#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
execute if entity @s[tag=AimsAtRightBlockWithRightItem] run function bcsmp:right_click/actions/pre_check
scoreboard players reset @s RightClick
#------------------------------------------#
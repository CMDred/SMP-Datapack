#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
execute if entity @s[tag=AimsAtRightBlockWithRightItem] run function bcsmp:right_click/actions/pre_check
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/pre_check
execute if predicate bcsmp:shops/holding_mode_switcher run function bcsmp:shops/container/switch_mode/clicked
scoreboard players reset @s RightClick
#------------------------------------------#

#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------ACTIONS LIST---------------#
execute as @e[tag=BlockCheck] if score @s PlayerID = @p PlayerID run tag @s add ThisChecker

execute if entity @s[tag=HoesOnCrop] run function bcsmp:right_click/actions/hoes_on_crop

tag @e remove ThisChecker
#------------------------------------------#


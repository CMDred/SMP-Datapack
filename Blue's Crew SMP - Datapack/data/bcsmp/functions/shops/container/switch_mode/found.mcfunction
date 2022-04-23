#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Clicker] ~ ~ ~ 1 2 1
execute if entity @s[tag=EditMode] run function bcsmp:shops/container/switch_mode/to_working
execute if entity @s[tag=WorkingMode,tag=!Changed] run function bcsmp:shops/container/switch_mode/to_edit
tag @s remove Changed
execute at @s run particle dust 0.243 0.765 0.016 1 ~ ~0.5 ~ 0.45 0.3 0.45 0.1 60 normal
#------------------------------------------#
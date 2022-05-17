#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
execute as @a[scores={ChangeOxidizingDuration=1..}] run function bcsmp:armor/options/change_oxidizing_duration
execute as @a[predicate=bcsmp:armor/copper_armor_any] at @s run function bcsmp:armor/copper_armor/oxidize
#------------------------------------------#

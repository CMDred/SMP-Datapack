#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
execute as @a[tag=ScheduleContext] run function bcsmp:get_held_item_type
execute as @a[tag=ScheduleContext,tag=SpellCasting,scores={OffHand=-2}] run function spells:casting/offhand
tag @a remove ScheduleContext
#------------------------------------------#
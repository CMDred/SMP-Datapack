#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--RIGHT CLICKED WITH SLIMEBALL ON PISTON--#
#particles
execute if block ~ ~ ~ piston[facing=down] align xyz run particle item_slime ~0.5 ~-0.5 ~0.5 0.2 0.02 0.2 0.01 12 normal
execute if block ~ ~ ~ piston[facing=up] align xyz run particle item_slime ~0.5 ~1.2 ~0.5 0.2 0.02 0.2 0.01 12 normal
execute if block ~ ~ ~ piston[facing=north] align xyz run particle item_slime ~0.5 ~0.3 ~-0.2 0.2 0.2 0.02 0.01 12 normal
execute if block ~ ~ ~ piston[facing=south] align xyz run particle item_slime ~0.5 ~0.3 ~1.2 0.2 0.2 0.02 0.01 12 normal
execute if block ~ ~ ~ piston[facing=east] align xyz run particle item_slime ~1.2 ~0.3 ~0.5 0.02 0.2 0.2 0.01 12 normal
execute if block ~ ~ ~ piston[facing=west] align xyz run particle item_slime ~-0.2 ~0.3 ~0.5 0.02 0.2 0.2 0.01 12 normal

#replace piston to sticky_piston
execute if block ~ ~ ~ piston[facing=down] run setblock ~ ~ ~ sticky_piston[facing=down] 
execute if block ~ ~ ~ piston[facing=up] run setblock ~ ~ ~ sticky_piston[facing=up] 
execute if block ~ ~ ~ piston[facing=north] run setblock ~ ~ ~ sticky_piston[facing=north] 
execute if block ~ ~ ~ piston[facing=south] run setblock ~ ~ ~ sticky_piston[facing=south] 
execute if block ~ ~ ~ piston[facing=east] run setblock ~ ~ ~ sticky_piston[facing=east] 
execute if block ~ ~ ~ piston[facing=west] run setblock ~ ~ ~ sticky_piston[facing=west]

#play sound
playsound entity.slime.jump master @s ~ ~ ~ 1 1.3 1
#------------------------------------------#


#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--RIGHT CLICKED WITH AXE ON STICKY PISTON-#
#summon slimeball where piston faces
execute if block ~ ~ ~ sticky_piston[facing=down] align xyz run summon item ~0.5 ~-0.5 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,-0.1,0.0]}
execute if block ~ ~ ~ sticky_piston[facing=up] align xyz run summon item ~0.5 ~1.2 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,0.1,0.0]}
execute if block ~ ~ ~ sticky_piston[facing=north] align xyz run summon item ~0.5 ~0.3 ~-0.2 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,0.1,-0.1]}
execute if block ~ ~ ~ sticky_piston[facing=south] align xyz run summon item ~0.5 ~0.3 ~1.2 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,0.1,0.1]}
execute if block ~ ~ ~ sticky_piston[facing=east] align xyz run summon item ~1.2 ~0.3 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.1,0.1,0.0]}
execute if block ~ ~ ~ sticky_piston[facing=west] align xyz run summon item ~-0.2 ~0.3 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[-0.1,0.1,0.0]}

#particles
execute if block ~ ~ ~ sticky_piston[facing=down] align xyz run particle item_slime ~0.5 ~-0.5 ~0.5 0.2 0.02 0.2 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=up] align xyz run particle item_slime ~0.5 ~1.2 ~0.5 0.2 0.02 0.2 0.01 12 normal

execute if block ~ ~ ~ sticky_piston[facing=north] align xyz run particle item_slime ~0.5 ~0.3 ~-0.2 0.2 0.2 0.02 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=south] align xyz run particle item_slime ~0.5 ~0.3 ~1.2 0.2 0.2 0.02 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=east] align xyz run particle item_slime ~1.2 ~0.3 ~0.5 0.02 0.2 0.2 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=west] align xyz run particle item_slime ~-0.2 ~0.3 ~0.5 0.02 0.2 0.2 0.01 12 normal
#replace sticky_piston to piston
execute if block ~ ~ ~ sticky_piston[facing=down] run setblock ~ ~ ~ piston[facing=down] 
execute if block ~ ~ ~ sticky_piston[facing=up] run setblock ~ ~ ~ piston[facing=up] 
execute if block ~ ~ ~ sticky_piston[facing=north] run setblock ~ ~ ~ piston[facing=north] 
execute if block ~ ~ ~ sticky_piston[facing=south] run setblock ~ ~ ~ piston[facing=south] 
execute if block ~ ~ ~ sticky_piston[facing=east] run setblock ~ ~ ~ piston[facing=east] 
execute if block ~ ~ ~ sticky_piston[facing=west] run setblock ~ ~ ~ piston[facing=west]

#play sound
playsound entity.slime.jump master @s ~ ~ ~ 1 1.3 1
#------------------------------------------#


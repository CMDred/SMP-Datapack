#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
setblock ~ ~ ~ brewing_stand
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=BrewingStand,distance=..0.1] run summon marker ~ ~ ~ {Tags:["BrewingStand"]}
#------------------------------------------#

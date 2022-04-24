#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------BLOCK CHECK----------------#
execute if block ~ ~ ~ #bcsmp:temperature_blocks/not_blockstate_dependent run function bcsmp:temperature/blocks/initiate_raycast
execute if block ~ ~ ~ #bcsmp:temperature_blocks/blockstate_dependent run function bcsmp:temperature/blocks/check_blockstate
#------------------------------------------#

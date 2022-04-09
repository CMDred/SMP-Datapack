##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard objectives add GameRules dummy
execute unless score #BaseRules Temp matches 1.. run function bcsmp:setup_smp/set_base_rules
#------------------------------------------#
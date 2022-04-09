#                                          #
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#                                          #
#-------------------INIT-------------------#
execute if entity @s[tag=SMPOwner] run function bcsmp:setup_smp/setup_success
execute unless entity @s[tag=SMPOwner] run function bcsmp:setup_smp/setup_fail
#------------------------------------------#
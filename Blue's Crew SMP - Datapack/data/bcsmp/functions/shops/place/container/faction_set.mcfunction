#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# run the check faction function, it sets the faction we're in at the first place of the Factions array
execute as @a[tag=Placing] run function bcsmp:factions/check_if_in/any_faction/start
tag @a remove IsInAFaction

data modify entity @s data.FactionOfTheVendor set from storage bcsmp:factions Factions[0]
#------------------------------------------#

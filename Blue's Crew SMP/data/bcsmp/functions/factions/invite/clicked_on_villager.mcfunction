#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
function bcsmp:factions/check_if_in/any_faction/start
execute if entity @s[tag=IsInAFaction] run function bcsmp:factions/invite/error1
execute if entity @s[tag=!IsInAFaction] run function bcsmp:factions/invite/success
tag @s remove IsInAFaction
advancement revoke @s only bcsmp:factions/click_on_villager_with_invite_paper
#------------------------------------------#
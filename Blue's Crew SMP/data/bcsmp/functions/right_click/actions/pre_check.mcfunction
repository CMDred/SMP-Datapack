#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------BIND SCORES TO ITEMS-----------#
execute if entity @s[tag=SugarOnConcrete] run scoreboard players set #SearchFor Temp 1
execute if entity @s[tag=HoesOnCrop] run scoreboard players set #SearchFor Temp 2
execute if entity @s[tag=SlimeballOnPiston] run scoreboard players set #SearchFor Temp 3
execute if entity @s[tag=AxesOnStickyPiston] run scoreboard players set #SearchFor Temp 4

# #Reach * 0.25 = reach in blocks
# reach in blocks / 0.25 = #Reach
scoreboard players set #Reach Temp 20
tag @s add ThisPlayer
execute anchored eyes positioned ^ ^ ^ run function bcsmp:right_click/actions/raycast
tag @s remove ThisPlayer
#------------------------------------------#

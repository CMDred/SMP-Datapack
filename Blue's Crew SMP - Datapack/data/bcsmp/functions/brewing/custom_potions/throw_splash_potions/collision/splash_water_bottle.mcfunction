#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
scoreboard players add @a[distance=..3.5] WetTimer 12000
scoreboard players set @a[distance=..3.5,scores={WetTimer=40001..}] WetTimer 40000
execute if block ~ ~ ~ campfire[lit=true,facing=east] run setblock ~ ~ ~ campfire[lit=false,facing=east]
execute if block ~ ~ ~ campfire[lit=true,facing=south] run setblock ~ ~ ~ campfire[lit=false,facing=south]
execute if block ~ ~ ~ campfire[lit=true,facing=west] run setblock ~ ~ ~ campfire[lit=false,facing=west]
execute if block ~ ~ ~ campfire[lit=true,facing=north] run setblock ~ ~ ~ campfire[lit=false,facing=north]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=east] run setblock ~ ~ ~ soul_campfire[lit=false,facing=east]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=south] run setblock ~ ~ ~ soul_campfire[lit=false,facing=south]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=west] run setblock ~ ~ ~ soul_campfire[lit=false,facing=west]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=north] run setblock ~ ~ ~ soul_campfire[lit=false,facing=north]
#------------------------------------------#

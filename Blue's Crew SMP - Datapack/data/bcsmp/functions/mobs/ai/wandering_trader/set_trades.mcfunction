setblock 29999977 319 29832 shulker_box
data merge storage bcsmp:wandering_trader {Trades:[]}

# NORMAL TRADES
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/main_trades
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/main_trades
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/main_trades
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/main_trades
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/main_trades
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade

# VANILLA LAST TRADE
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/last_trade
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade

# HEAD TRADE
#loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/dev_heads
#data modify storage bcsmp:wandering_trader Trades append value {maxUses:1,buy:{id:"minecraft:emerald",Count:50b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}
#data modify storage bcsmp:wandering_trader Trades[-1].sell set from block 29999977 319 29832 Items[0]

# CUSTOM TRADES
loot replace block 29999977 319 29832 container.0 loot bcsmp:wandering_trader/custom_trades
data modify storage bcsmp:wandering_trader Trades append from block 29999977 319 29832 Items[0].tag.Trade

data modify entity @s Offers.Recipes set from storage bcsmp:wandering_trader Trades

tag @s add Registered
setblock 29999977 319 29832 air

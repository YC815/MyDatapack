gamerule commandBlockOutput false
gamerule sendCommandFeedback false
#傳送磚合成
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:polished_andesite",Count:1b}},distance=..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..1] at @s run tag @s add tp_block
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:polished_andesite",Count:1b}},distance=..1] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{id:"item_frame",Tags:["tp_block"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b},display:{Name:'{"translate":"傳送石磚"}'}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:polished_andesite",Count:1b}},distance=..1,limit=1]
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},tag=tp_block] at @s run kill @s

#傳送列表合成
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},nbt=!{Item:{id:"minecraft:paper",tag:{tp_list:1b}}},distance=..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..1] at @s run tag @s add tp_list
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},nbt=!{Item:{id:"minecraft:paper",tag:{tp_list:1b}}},distance=..1] at @s run summon minecraft:item ~ ~ ~ {Tags:["tp_list"],Item:{id:"minecraft:clock",Count:1b,tag:{tp_list:1b,display:{Name:'{"translate":"傳送石磚列表"}'}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},nbt=!{Item:{id:"minecraft:paper",tag:{tp_list:1b}}},distance=..1,limit=1]
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},tag=tp_list] at @s run kill @s
#傳送列表
execute as @a[nbt=!{SelectedItem:{id:"minecraft:clock",tag:{tp_list:1b}}},tag=!tp_list] at @s run tag @s add tp_list
execute as @a[nbt={SelectedItem:{id:"minecraft:clock",tag:{tp_list:1b}}},tag=tp_list] at @s run tellraw @s {"text":"[開啟選單]","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function tpblock:list"}}
execute as @a[nbt={SelectedItem:{id:"minecraft:clock",tag:{tp_list:1b}}},tag=tp_list] at @s run tag @s remove tp_list
#傳送磚
execute as @e[type=item_frame,tag=tp_block,tag=!block_in] at @s run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 1
execute as @e[type=item_frame,tag=tp_block,tag=!block_in] at @s run setblock ~ ~ ~ lodestone destroy

execute as @e[type=item_frame,tag=tp_block] at @s run particle enchant ~ ~0.5 ~ 0.5 0.5 0.5 0.01 1 normal
execute as @e[type=item_frame,tag=tp_block] at @s unless entity @e[type=item_frame,tag=tp_block_1,distance=..2] run summon minecraft:item_frame ~ ~1 ~ {ItemRotation:0b,Tags:["tp_block_1"],Invisible:1b,Invulnerable:1b,Silent:1b,Facing:1b}

#設定方向顯示
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:0b}] at @s run particle end_rod ~ ~0.1 ~-0.5 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:1b}] at @s run particle end_rod ~0.5 ~0.1 ~-0.5 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:2b}] at @s run particle end_rod ~0.5 ~0.1 ~ 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:3b}] at @s run particle end_rod ~0.5 ~0.1 ~0.5 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:4b}] at @s run particle end_rod ~ ~0.1 ~0.5 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:5b}] at @s run particle end_rod ~-0.5 ~0.1 ~0.5 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:6b}] at @s run particle end_rod ~-0.5 ~0.1 ~ 0.01 0.01 0.01 0.001 1 normal
execute as @a[tag=!set_a] at @s run execute as @e[type=item_frame,tag=tp_block_1,nbt={ItemRotation:7b}] at @s run particle end_rod ~-0.5 ~0.1 ~-0.5 0.01 0.01 0.01 0.001 1 normal









#偵測物品
execute as @e[type=item_frame,tag=tp_block_1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run tag @s add diamond
execute as @e[type=item_frame,tag=tp_block_1,nbt=!{Item:{id:"minecraft:diamond",Count:1b}}] at @s run tag @s remove diamond
execute as @e[type=item_frame,tag=tp_block_1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] at @s run tag @s add emerald
execute as @e[type=item_frame,tag=tp_block_1,nbt=!{Item:{id:"minecraft:emerald",Count:1b}}] at @s run tag @s remove emerald
execute as @e[type=item_frame,tag=tp_block_1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] at @s run tag @s add iron_ingot
execute as @e[type=item_frame,tag=tp_block_1,nbt=!{Item:{id:"minecraft:iron_ingot",Count:1b}}] at @s run tag @s remove iron_ingot
execute as @e[type=item_frame,tag=tp_block_1,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] at @s run tag @s add gold_ingot
execute as @e[type=item_frame,tag=tp_block_1,nbt=!{Item:{id:"minecraft:gold_ingot",Count:1b}}] at @s run tag @s remove gold_ingot
execute as @e[type=item_frame,tag=tp_block_1,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}}] at @s run tag @s add copper_ingot
execute as @e[type=item_frame,tag=tp_block_1,nbt=!{Item:{id:"minecraft:copper_ingot",Count:1b}}] at @s run tag @s remove copper_ingot

execute as @e[type=item_frame,tag=tp_block,tag=!block_in] at @s if block ~ ~ ~ lodestone run tag @s add block_in
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run execute as @e[type=item,nbt={Item:{id:"minecraft:lodestone",Count:1b}},distance=..1] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{id:"item_frame",Tags:["tp_block"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b},display:{Name:'{"translate":"傳送石磚"}'}}}}
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run kill @e[type=item,nbt={Item:{id:"minecraft:lodestone",Count:1b}},distance=..1,limit=1]

#================================
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run execute as @e[type=item_frame,tag=tp_block_1,distance=..2,tag=diamond] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run execute as @e[type=item_frame,tag=tp_block_1,distance=..2,tag=emerald] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run execute as @e[type=item_frame,tag=tp_block_1,distance=..2,tag=iron_ingot] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run execute as @e[type=item_frame,tag=tp_block_1,distance=..2,tag=gold_ingot] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run execute as @e[type=item_frame,tag=tp_block_1,distance=..2,tag=copper_ingot] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_ingot",Count:1b}}


#================================
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run kill @e[type=item_frame,tag=tp_block_1,distance=..2]
#================================
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond] at @s unless block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[type=item_frame,tag=tp_block_1,tag=emerald] at @s unless block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[type=item_frame,tag=tp_block_1,tag=iron_ingot] at @s unless block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @e[type=item_frame,tag=tp_block_1,tag=gold_ingot] at @s unless block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute as @e[type=item_frame,tag=tp_block_1,tag=copper_ingot] at @s unless block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_ingot",Count:1b}}

#================================
execute as @e[type=item_frame,tag=tp_block_1] at @s unless block ~ ~ ~ air run kill @s
execute as @e[type=item_frame,tag=tp_block,tag=block_in] at @s unless block ~ ~ ~ lodestone run kill @s
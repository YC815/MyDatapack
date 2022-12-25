#傳送列表
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s[tag=!set_b] {"text":" "}
tellraw @s {"text":"========已激活傳送石磚列表========","bold":true,"color":"gold"}
execute if entity @e[type=item_frame,tag=tp_block_1,tag=diamond] run tellraw @s {"text":"[鑽石]","color":"blud","clickEvent":{"action":"run_command","value":"/function tpblock:list_a"}}
execute if entity @e[type=item_frame,tag=tp_block_1,tag=emerald] run tellraw @s {"text":"[綠寶石]","color":"blud","clickEvent":{"action":"run_command","value":"/function tpblock:list_b"}}
execute if entity @e[type=item_frame,tag=tp_block_1,tag=iron_ingot] run tellraw @s {"text":"[鐵錠]","color":"blud","clickEvent":{"action":"run_command","value":"/function tpblock:list_c"}}
execute if entity @e[type=item_frame,tag=tp_block_1,tag=gold_ingot] run tellraw @s {"text":"[金錠]","color":"blud","clickEvent":{"action":"run_command","value":"/function tpblock:list_d"}}
execute if entity @e[type=item_frame,tag=tp_block_1,tag=copper_ingot] run tellraw @s {"text":"[銅錠]","color":"blud","clickEvent":{"action":"run_command","value":"/function tpblock:list_e"}}


execute unless entity @e[type=item_frame,tag=tp_block_1,tag=diamond] run execute unless entity @e[type=item_frame,tag=tp_block_1,tag=emerald] run execute unless entity @e[type=item_frame,tag=tp_block_1,tag=iron_ingot] run execute unless entity @e[type=item_frame,tag=tp_block_1,tag=gold_ingot] run execute unless entity @e[type=item_frame,tag=tp_block_1,tag=copper_ingot] run tellraw @s {"text":"尚未找到已激活的傳送石磚 點擊下方 [資料包資訊] 查看可激活物品","color":"red"}
tellraw @s {"text":"============================","bold":true,"color":"gold"}
tellraw @s {"text":"[資料包設定]","color":"yellow","clickEvent":{"action":"run_command","value":"/function tpblock:list_set"}}
tellraw @s {"text":"[資料包資訊]","color":"yellow","clickEvent":{"action":"run_command","value":"/function tpblock:list_list"}}
tellraw @s {"text":"============================","bold":true,"color":"gold"}
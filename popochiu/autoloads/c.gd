@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCFulana := preload('res://popochiu/characters/fulana/character_fulana.gd')
const PCMelana := preload('res://popochiu/characters/melana/character_melana.gd')
# ---- classes

# nodes ----
var Fulana: PCFulana : get = get_Fulana
var Melana: PCMelana : get = get_Melana
# ---- nodes

# functions ----
func get_Fulana() -> PCFulana: return super.get_runtime_character('Fulana')
func get_Melana() -> PCMelana: return super.get_runtime_character('Melana')
# ---- functions


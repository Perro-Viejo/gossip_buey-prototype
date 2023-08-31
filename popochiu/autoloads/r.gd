@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRCoffee := preload('res://popochiu/rooms/coffee/room_coffee.gd')
# ---- classes

# nodes ----
var Coffee: PRCoffee : get = get_Coffee
# ---- nodes

# functions ----
func get_Coffee() -> PRCoffee: return super.get_runtime_room('Coffee')
# ---- functions


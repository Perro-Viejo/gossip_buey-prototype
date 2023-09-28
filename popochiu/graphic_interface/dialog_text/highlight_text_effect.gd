@tool
extends RichTextEffect

var bbcode := "highlight"
var unknown_glyphs: Array[int] = [612, 594, 395, 588, 603, 0, 681]


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	if not Globals.dialog_listened_indexes.is_empty():
		for idxs in Globals.dialog_listened_indexes:
			if char_fx.relative_index > idxs[1]:
				continue
			
			if char_fx.relative_index >= idxs[0]\
			and char_fx.relative_index <= idxs[1]:
				char_fx.color = Color.GREEN
				return true
	
	# Matrix-o
#	var value = char_fx.glyph_index
#	var matrix_time = fmod(char_fx.elapsed_time + (char_fx.range.x / float(50)), \
#						   2.0 + 1.0)
#
#	matrix_time = 0.0 if matrix_time < 2.0 else \
#				  (matrix_time - 2.0) / 1.0
#
#	if matrix_time > 0.0:
#		value = int(1 * matrix_time * (126 - 65))
#		value %= (126 - 65)
#		value += 65
	
#	char_fx.glyph_index = get_text_server().font_get_glyph_index(
#		char_fx.font, 1, value, 0
#	)
	
	#prints("char_fx.glyph_index", char_fx.glyph_index)
	char_fx.glyph_index = unknown_glyphs.pick_random()
	return true


#func get_text_server():
#	return TextServerManager.get_primary_interface()

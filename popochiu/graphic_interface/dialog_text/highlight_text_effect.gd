@tool
extends RichTextEffect

var bbcode := "highlight"

func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	if Globals.is_listening and (
		char_fx.relative_index >= Globals.start_idx\
		and char_fx.relative_index <= Globals.end_idx
	):
		char_fx.color = Color.GREEN
		return true
	
	return false

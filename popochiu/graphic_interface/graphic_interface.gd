extends CanvasLayer


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ GODOT ░░░░
func _ready() -> void:
	%Notepad.hide()
	%Notes.text = ""


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PRIVATE ░░░░
func _on_gossip_button_down() -> void:
	get_viewport().set_input_as_handled()
	
	Globals.started_listening.emit()
	Globals.is_listening = true


func _on_gossip_button_up() -> void:
	get_viewport().set_input_as_handled()
	
	Globals.stopped_listening.emit()
	Globals.is_listening = false


func _on_notebook_pressed() -> void:
	get_viewport().set_input_as_handled()
	
	for dialog in Globals.listened_dialogs:
		var character_name: String = (dialog as String).split("_")[0]
		var dialog_line: String = Globals.listened_dialogs[dialog]
		
		#if not (dialog_line.ends_with("?") or dialog_line.ends_with("!")):
			#dialog_line += "."
		
		%Notes.text += "[b]%s[/b]: %s\n" % [character_name, dialog_line]
	
	%Notepad.show()


func _on_close_pressed() -> void:
	%Notepad.hide()
	%Notes.text = ""

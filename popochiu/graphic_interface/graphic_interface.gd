extends CanvasLayer


func _on_gossip_button_down() -> void:
	Globals.started_listening.emit()
	Globals.is_listening = true


func _on_gossip_button_up() -> void:
	Globals.stopped_listening.emit()
	Globals.is_listening = false

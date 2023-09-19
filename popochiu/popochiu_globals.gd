extends Node

signal started_listening
signal stopped_listening

var is_listening := false
var listened_dialogs := {}
var dialog_listened_indexes := [[ -1, -1 ]]

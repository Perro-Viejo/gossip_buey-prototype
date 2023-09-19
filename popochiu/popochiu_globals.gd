extends Node

signal started_listening
signal stopped_listening

var is_listening := false
var listened_dialogs := {}
var start_idx := 0
var end_idx := 0

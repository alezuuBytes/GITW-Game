extends Node2D

func _ready() -> void:
	$CheckButton.button_pressed = globales.god_mode

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/menu.tscn")


func _on_check_button_toggled(toggled_on: bool) -> void:
	globales.god_mode = toggled_on

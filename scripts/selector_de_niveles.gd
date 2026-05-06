extends CanvasLayer

@onready var _1_er_nivel: Button = $"HBoxContainer/1er_nivel"
@onready var _2_do_nivel: Button = $"HBoxContainer/2do_nivel"
@onready var menu: Button = $HBoxContainer/menu

func _physics_process(delta: float) -> void:
	if _1_er_nivel.button_pressed:
		get_tree().change_scene_to_file("res://Escenas/escena_principal.tscn")
	if _2_do_nivel.button_pressed:
		get_tree().change_scene_to_file("res://Escenas/EscenaFinal.tscn")
	if menu.button_pressed:
		get_tree().change_scene_to_file("res://Escenas/menu.tscn")

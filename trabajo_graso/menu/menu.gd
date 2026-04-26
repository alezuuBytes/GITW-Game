extends Node2D

func _physics_process(delta: float) -> void:
	pass

func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/Nivel_0_Introduccion/nivel_0_introduccion.tscn")

func _on_creditos_pressed() -> void:
	get_tree().change_scene_to_file("res://trabajo_graso/creditos/creditos.tscn")

func _on_salir_pressed() -> void:
	get_tree().quit()

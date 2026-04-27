extends Node2D

func _physics_process(delta: float) -> void:
	pass

func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/Escena_Principal/escena_principal.tscn")

func _on_creditos_pressed() -> void:
	get_tree().change_scene_to_file("res://trabajo_graso/creditos/creditos.tscn")

func _on_salir_pressed() -> void:
	get_tree().quit()

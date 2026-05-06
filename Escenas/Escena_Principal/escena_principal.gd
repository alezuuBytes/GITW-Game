extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		globales.posicion_personaje = body.global_position
		globales.velocidad_personaje = body.velocity
		
		get_tree().change_scene_to_file("res://Escenas/Escena_Final/EscenaFinal.tscn")

extends CharacterBody2D

@onready var hitbox_enable: CheckButton = $CanvasLayer/hitbox_enable
@onready var custom_speed_enable: CheckButton = $CanvasLayer/custom_speed_enable
@onready var spin_box: SpinBox = $CanvasLayer/SpinBox
var input : Vector2
var speed := 200

func _ready() -> void:
	$CanvasLayer.visible = globales.god_mode
	if globales.copiar_variables:
		global_position = globales.posicion_personaje
		velocity = globales.velocidad_personaje

func _physics_process(delta: float) -> void:
	$CollisionShape2D.disabled = hitbox_enable.button_pressed
	$CanvasLayer/SpinBox.visible = custom_speed_enable.button_pressed
	
	input = Input.get_vector("left","right","up","down")
	if custom_speed_enable.button_pressed == true:
		velocity = velocity.lerp(input*spin_box.value,delta * 100)
		$Camera2D2.global_position = global_position
	else:
		velocity = velocity.lerp(input*speed,delta * 100)
	
	
	if Input.is_action_pressed("shift"):
		speed = 300
	else:
		speed = 200
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == self:
		print("waos")
		globales.posicion_personaje = global_position
		globales.velocidad_personaje = velocity
		globales.copiar_variables = true
		get_tree().call_deferred("change_scene_to_file", "res://Escenas/EscenaFinal.tscn")


func _on_button_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Escenas/selector_de_nivel.tscn")

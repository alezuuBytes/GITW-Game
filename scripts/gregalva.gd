extends CharacterBody2D

var input : Vector2
var speed := 200

func _physics_process(delta: float) -> void:
	input = Input.get_vector("left","right","up","down")
	velocity = velocity.lerp(input*speed,delta * 100)
	if Input.is_action_pressed("shift"):
		speed = 300
	else:
		speed = 200
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	body.modulate = Color.RED

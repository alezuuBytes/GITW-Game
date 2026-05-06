extends Camera2D

var speed := 20
var offsetPlayer :int= 10

func _ready() -> void:
	position_smoothing_enabled = false
	global_position = get_parent().global_position
	await get_tree().create_timer(0.2).timeout
	position_smoothing_enabled = true

func _process(delta: float) -> void:
	print(global_position)
	if Input.is_action_pressed("shift"):
		speed = 30
	else:
		speed = 20
	if global_position.x < get_parent().global_position.x - offsetPlayer:
		global_position.x += 10 * delta * speed
	if global_position.x > get_parent().global_position.x + offsetPlayer:
		global_position.x -= 10 * delta * speed
	if global_position.y < get_parent().global_position.y - offsetPlayer:
		global_position.y += 10 * delta * speed
	if global_position.y > get_parent().global_position.y + offsetPlayer:
		global_position.y -= 10 * delta * speed

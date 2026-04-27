extends Camera2D

func _ready() -> void:
	global_position = get_parent().global_position

func _process(delta: float) -> void:
	if global_position.x < get_parent().global_position.x - 20:
		global_position.x += 10 * delta * 10
	if global_position.x > get_parent().global_position.x + 20:
		global_position.x = lerp(global_position.x, global_position.x - 10, delta * 6)
	if global_position.y < get_parent().global_position.y - 20:
		global_position.x += 10 * delta * 10
	if global_position.y < get_parent().global_position.y - 20:
		global_position.x += 10 * delta * 10

extends Area2D

var height : int
var pheight : int

func _ready() -> void:
	height = get_viewport_rect().size.y
	pheight = $ColorRect.get_size().y

func _process(delta: float) -> void:
	if get_parent().BALL_Y < position.y:
		if $ColorRect.get_screen_position().y > 20:
			position.y -= get_parent().AI_speed * delta
	else:
		if ($ColorRect.get_screen_position().y + pheight) < (height - 20):
			position.y += get_parent().AI_speed * delta

extends Area2D

var height : int
var pheight : int

func _ready() -> void:
	height = get_viewport_rect().size.y
	pheight = $ColorRect.get_size().y

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		if $ColorRect.get_screen_position().y > 21:
			position.y -= get_parent().PADDLE_SPEED * delta
	elif Input.is_action_pressed("ui_down"):
		if ($ColorRect.get_screen_position().y + pheight) < (height - 21):
			position.y += get_parent().PADDLE_SPEED * delta

extends CharacterBody2D

var speed = 400

var win_height
var win_width
var speed_x = [speed, -speed].pick_random()
var speed_y = [speed, -speed].pick_random()

var direction := Vector2()

func _ready():
	win_height = get_viewport_rect().size.y
	win_width = get_viewport_rect().size.x
	direction.x = speed_x
	direction.y = speed_y

func _process(delta: float) -> void:
	get_parent().BALL_Y = position.y

func _physics_process(delta: float) -> void:
	move_and_collide(direction * delta)

func _on_border_hit(body: Node2D) -> void:
	direction.y = -direction.y

func _on_hit(body: Node2D) -> void:
	direction.x = -direction.x

func _on_left_border(body: Node2D) -> void:
	speed_x = [speed, -speed].pick_random()
	speed_y = [speed, -speed].pick_random()
	direction.x = speed_x
	direction.y = speed_y
	position.y = win_height / 2
	position.x = win_width / 2
	get_parent().ScoreP1 += 1

func _on_right_border(body: Node2D) -> void:
	position.y = win_height / 2
	position.x = win_width / 2
	get_parent().ScoreP2 += 1

extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var _gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")
var _running_direction: float


func jump() -> void:
	if is_on_floor():
		velocity.y = JUMP_VELOCITY


func set_running_direction(value: float) -> void:
	_running_direction = value


func _physics_process(delta: float) -> void:
	_apply_gravity(delta)
	_process_horizontal_movement()


func _apply_gravity(delta) -> void:
	if not is_on_floor():
		velocity.y += _gravity * delta


func _process_horizontal_movement() -> void:
	if _running_direction:
		velocity.x = _running_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()

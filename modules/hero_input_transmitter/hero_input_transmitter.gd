extends Node


@export var _channel: HeroInputChannel


func on_horizontal_axis_input(value: float) -> void:
	_channel.move_horizontal_input_recieved.emit(value)


func on_jump_input() -> void:
	_channel.jump_input_recieved.emit()

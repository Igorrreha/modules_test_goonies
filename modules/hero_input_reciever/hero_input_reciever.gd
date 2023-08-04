extends Node


signal move_horizontal_input_recieved(value: float)
signal jump_input_recieved


@export var _input_channel: HeroInputChannel


func _ready() -> void:
	_input_channel.move_horizontal_input_recieved.connect(func(x):
			move_horizontal_input_recieved.emit(x))
	_input_channel.jump_input_recieved.connect(func():
			jump_input_recieved.emit())


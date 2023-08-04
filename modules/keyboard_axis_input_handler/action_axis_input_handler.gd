extends Node


signal value_changed(value: float)


@export var _action_from: StringName
@export var _action_to: StringName


var value: float


func _process(delta: float) -> void:
	var axis = Input.get_axis(_action_from, _action_to)
	if axis == value:
		return
	
	value = axis
	value_changed.emit(value)

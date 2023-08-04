@tool
extends EditorPlugin


var _socket_inspector: InputSocketInspector


func _enter_tree() -> void:
	var _socket_inspector = InputSocketInspector.new()
	add_inspector_plugin(_socket_inspector)


func _exit_tree() -> void:
	remove_inspector_plugin(_socket_inspector)

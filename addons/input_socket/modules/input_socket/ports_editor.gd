class_name SocketPortsEditor
extends EditorProperty


var _port_editor_tscn: PackedScene = preload("res://addons/input_socket/modules/input_socket/port_editor.tscn")


func _init(socket: InputSocket) -> void:
	if not socket.scheme:
		return
	
	for scheme_item in socket.scheme.items:
		if not socket.ports.has(scheme_item.port_name):
			socket.ports[scheme_item.port_name] = null
		
		var port_editor = _port_editor_tscn.instantiate() as SocketPortEditor
		port_editor.setup(scheme_item, socket.ports[scheme_item.port_name])
		add_child(port_editor)

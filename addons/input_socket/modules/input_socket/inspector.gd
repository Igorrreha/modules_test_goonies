class_name InputSocketInspector
extends EditorInspectorPlugin


func _can_handle(object: Object) -> bool:
	return object is InputSocket


func _parse_property(object: Object, type: Variant.Type, name: String,
	hint_type: PropertyHint, hint_string: String, usage_flags: int, wide: bool) -> bool:
	match name:
		"ports":
			var socket = object as InputSocket
			add_property_editor(name, SocketPortsEditor.new(socket))
			
			return true
	
	return false

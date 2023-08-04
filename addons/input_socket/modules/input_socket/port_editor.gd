class_name SocketPortEditor
extends HBoxContainer


@onready var _status_icon: TextureRect = $StatusIcon
var _error_icon: Texture = preload("res://icon.svg")


func setup(input_scheme_item: InputSchemeItem, value: InputHandler) -> void: 
	$Name.text = input_scheme_item.port_name
	var resource_picker = EditorResourcePicker.new()
	resource_picker.base_type = InputHandler
	resource_picker.edited_resource = value
	$ResourceEditorContainer.add_child(resource_picker)
	
	if not value or value.input_value_type != input_scheme_item.input_value_type:
		_status_icon.texture = _error_icon

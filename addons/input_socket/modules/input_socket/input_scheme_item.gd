class_name InputSchemeItem
extends Resource


enum InputValueType {
	BOOL = 1,
	INT = 2,
	FLOAT = 3,
	STRING = 4,
	VECTOR2 = 5,
	VECTOR2I = 6,
}


@export var port_name: String
@export var input_value_type: InputValueType = InputValueType.BOOL

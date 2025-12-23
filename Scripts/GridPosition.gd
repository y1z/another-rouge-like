extends Object

var position: Vector2i ;
var attributes : Enums.GridPositionAttr;

func _init() -> void:
	position = Vector2i.ZERO
	print(Enums.GridPositionAttr.DEFAULT)
	print(Enums.GridPositionAttr.PLACE_HOLDER_1)

extends Node2D

@export_group("VARIABLES")
@export var rows :int 
@export var colums :int 
@export var size :Vector2i


var grid_positions :Array[GridPosition] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	generate_positions()

func generate_positions():
	assert(rows > 0,"Rows need to have a minimum of 1")
	assert(colums > 0, "Columns need to hava a minimum of 1")
	assert(size.x > 0, "The minimum width in size is 1")
	assert(size.y > 0, "The minimum height in size is 1")
	var size_per_row:int = size.y / rows;
	var size_per_colum:int = size.x / colums;
	
	for row in rows :
		for col in colums:
			var new_grid_position: = GridPosition.new()
			new_grid_position.position.x = size_per_row * row
			new_grid_position.position.y = size_per_colum * col
			new_grid_position.attributes = Enums.GridPositionAttr.DEFAULT
			grid_positions.push_back(new_grid_position)
			pass
		pass
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

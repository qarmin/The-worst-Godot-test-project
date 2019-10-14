extends Node2D

var q_HeightMapShape : HeightMapShape = HeightMapShape.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_HeightMapShape = HeightMapShape.new()
			
		
#	BUG	if randi() % 2 == 1:
#			q_HeightMapShape.set_map_width(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_HeightMapShape.set_map_depth(Autoload.get_int())
		if randi() % 2 == 1:
			q_HeightMapShape.set_map_data(Autoload.get_poolrealarray())

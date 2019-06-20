extends Node2D

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
		
		var q_HeightMapShape : HeightMapShape = HeightMapShape.new()
		
		q_HeightMapShape.set_map_width(randi()%50)
		q_HeightMapShape.set_map_depth(randi()%50)
		q_HeightMapShape.set_map_data(PoolRealArray([125125.125,12512.1251,122.124]))
		
		if Autoload.WRONG_BUGS:
			pass

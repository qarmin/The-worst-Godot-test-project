extends Node2D

var q_PolygonPathFinder : PolygonPathFinder = PolygonPathFinder.new()
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
			q_PolygonPathFinder = PolygonPathFinder.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.find_path( Autoload.get_vector2(), Autoload.get_vector2() ))
			
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_bounds())
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_closest_point( Autoload.get_vector2() ))
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_intersections( Autoload.get_vector2(), Autoload.get_vector2() ))
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_point_penalty( Autoload.get_int()))
			
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.is_point_inside( Autoload.get_vector2() ))
			
		if randi() % 2 == 1:
			q_PolygonPathFinder.set_point_penalty(Autoload.get_int(), Autoload.get_float())
		if randi() % 2 == 1:
			q_PolygonPathFinder.setup( PoolVector2Array([Autoload.get_vector2(),Autoload.get_vector2()]), PoolIntArray ([11,124,1241,24,21,214,12,11]))

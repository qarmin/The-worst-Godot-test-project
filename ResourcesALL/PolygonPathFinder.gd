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
			qq += str(q_PolygonPathFinder.find_path( Vector2(Autoload.get_randf(),Autoload.get_randf()), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_bounds())
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_closest_point( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_intersections( Vector2(Autoload.get_randf(),Autoload.get_randf()), Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.get_point_penalty( Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(q_PolygonPathFinder.is_point_inside( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			q_PolygonPathFinder.set_point_penalty(Autoload.get_randi(), Autoload.get_randf())
		if randi() % 2 == 1:
			q_PolygonPathFinder.setup( PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())]), PoolIntArray ([11,124,1241,24,21,214,12,11]))

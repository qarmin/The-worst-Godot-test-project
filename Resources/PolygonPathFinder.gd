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
		
		var q_PolygonPathFinder : PolygonPathFinder = PolygonPathFinder.new()
		
		qq += str(q_PolygonPathFinder.find_path( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50) ))
		
		qq += str(q_PolygonPathFinder.get_bounds())
		qq += str(q_PolygonPathFinder.get_closest_point( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_PolygonPathFinder.get_intersections( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50) ))
		#qq += str(q_PolygonPathFinder.get_point_penalty( 0))
		
		qq += str(q_PolygonPathFinder.is_point_inside( Vector2(randf() * 50,randf() * 50) ))
		
		#q_PolygonPathFinder.set_point_penalty(0, randf() * 50)
		#q_PolygonPathFinder.setup( PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), PoolIntArray ([11,124,1241,24,21,214,12,11]))
		
		if Autoload.WRONG_BUGS:
			pass

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
		
		var q_NavigationPolygon : NavigationPolygon = NavigationPolygon.new()
		
		q_NavigationPolygon.add_outline( PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]) )
		q_NavigationPolygon.add_outline_at_index( PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), 0 )
		q_NavigationPolygon.add_polygon( PoolIntArray([11,124,1241,24,21,214,12,11]))
		
		#MOVED q_NavigationPolygon.clear_outlines()
		#MOVED q_NavigationPolygon.clear_polygons()
		
		qq += str(q_NavigationPolygon.get_outline(0 ))
		qq += str(q_NavigationPolygon.get_outline_count())
		qq += str(q_NavigationPolygon.get_polygon(0 ))
		qq += str(q_NavigationPolygon.get_polygon_count())
		qq += str(q_NavigationPolygon.get_vertices())
		
		q_NavigationPolygon.make_polygons_from_outlines()
		q_NavigationPolygon.remove_outline(0 )
		
		q_NavigationPolygon.set_outline(0, PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]) )
		q_NavigationPolygon.set_vertices( PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]) )
		
		q_NavigationPolygon.clear_outlines() #MOVED
		q_NavigationPolygon.clear_polygons() #MOVED
		
		if Autoload.WRONG_BUGS:
			pass

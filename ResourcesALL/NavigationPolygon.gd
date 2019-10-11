extends Node2D

var q_NavigationPolygon : NavigationPolygon = NavigationPolygon.new()
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
			q_NavigationPolygon = NavigationPolygon.new()
		
		
		if randi() % 2 == 1:
			q_NavigationPolygon.add_outline( PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())]) )
		if randi() % 2 == 1:
			q_NavigationPolygon.add_outline_at_index( PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())]), Autoload.get_randi() )
			q_NavigationPolygon.add_polygon( PoolIntArray([11,124,1241,24,21,214,12,11]))
			
		if randi() % 2 == 1:
			q_NavigationPolygon.clear_outlines()
		if randi() % 2 == 1:
			q_NavigationPolygon.clear_polygons()
			
		if randi() % 2 == 1:
			qq += str(q_NavigationPolygon.get_outline(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_NavigationPolygon.get_outline_count())
		if randi() % 2 == 1:
			qq += str(q_NavigationPolygon.get_polygon(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_NavigationPolygon.get_polygon_count())
		if randi() % 2 == 1:
			qq += str(q_NavigationPolygon.get_vertices())
			
		if randi() % 2 == 1:
			q_NavigationPolygon.make_polygons_from_outlines()
		if randi() % 2 == 1:
			q_NavigationPolygon.remove_outline(Autoload.get_randi() )
			
		if randi() % 2 == 1:
			q_NavigationPolygon.set_outline(Autoload.get_randi(), PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())]) )
		if randi() % 2 == 1:
			q_NavigationPolygon.set_vertices( PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())]) )
			

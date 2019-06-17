extends Navigation2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		qq += str(get_closest_point(Vector2(randf() * 1500,randf() * 1500)))
		qq += str(get_closest_point_owner(Vector2(randf() * 1500,randf() * 1500)))
		var navpol : NavigationPolygon = NavigationPolygon.new()
		navpol.clear_polygons()
		navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * 50,randf() * 50),-Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * -50)]),0)
		navpol.remove_outline(0)
		navpol.clear_outlines()
		navpol.add_outline(PoolVector2Array([Vector2(randf() * 50,randf() * 50),-Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * -50)]))
		navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * 50,randf() * 50),-Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * -50)]),1)
		navpol.add_polygon(PoolIntArray([randi()%14, randi()%30 + 14, randi()%100 + 35]))
		qq += str(navpol.get_outline(0))
		qq += str(navpol.get_outline_count())
		qq += str(navpol.get_polygon(0))
		qq += str(navpol.get_polygon_count())
		qq += str(navpol.get_vertices())
		#navpol.make_polygons_from_outlines()
		navpol.set_outline(0,PoolVector2Array([Vector2(randf() * 50,randf() * 50),-Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * -50)]))
		navpol.set_vertices(PoolVector2Array([Vector2(randf() * 50,randf() * 50),-Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * -50)]))
		
		#navpoly_remove(navpoly_add(navpol,Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50 + 100,randf() * 50 + 100),Vector2(randf() * 50 - 50,randf() * 50 + 500))))
		navpoly_set_transform(1,Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		
		
		if Autoload.WRONG_BUGS:
			qq += str(get_closest_point(Vector2(randf() * 1500,randf() * 1500)))
			qq += str(get_closest_point_owner(Vector2(randf() * 1500,randf() * 1500)))
			navpol = NavigationPolygon.new()
			navpol.clear_polygons()
			navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]),randi() % 1000 - 500)
			navpol.remove_outline(randi() % 1000 - 500)
			navpol.clear_outlines()
			navpol.add_outline(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]),randi() % 1000 - 500)
			navpol.add_polygon(PoolIntArray([randi()%14, randi()%30 + 14, randi()%100 + 35]))
			qq += str(navpol.get_outline(randi() % 1000 - 500))
			qq += str(navpol.get_outline_count())
			qq += str(navpol.get_polygon(randi() % 1000 - 500))
			qq += str(navpol.get_polygon_count())
			qq += str(navpol.get_vertices())
			navpol.make_polygons_from_outlines()
			navpol.set_outline(randi() % 1000 - 500,PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			navpol.set_vertices(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			
			navpoly_remove(navpoly_add(navpol,Transform2D(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500))))
			navpoly_set_transform(randi() % 1000 - 500,Transform2D(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))

extends NavigationPolygonInstance

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
		var navpol : NavigationPolygon = NavigationPolygon.new()
		if !Autoload.RANDI:
			
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
			
			set_enabled(bool(randi()%2))
			
			
			if Autoload.WRONG_BUGS:
				navpol = NavigationPolygon.new()
				navpol.clear_polygons()
				navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]),randi() % Autoload.RANGE - Autoload.RANGE / 2)
				navpol.remove_outline(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				navpol.clear_outlines()
				navpol.add_outline(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
				navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]),randi() % Autoload.RANGE - Autoload.RANGE / 2)
				navpol.add_polygon(PoolIntArray([randi()%14, randi()%30 + 14, randi()%100 + 35]))
				qq += str(navpol.get_outline(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(navpol.get_outline_count())
				qq += str(navpol.get_polygon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(navpol.get_polygon_count())
				qq += str(navpol.get_vertices())
				navpol.make_polygons_from_outlines()
				navpol.set_outline(randi() % Autoload.RANGE - Autoload.RANGE / 2,PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
				navpol.set_vertices(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
	
				set_enabled(bool(randi()%2))
	
		else: #RANDI
			if randi() % 2 == 1:
				navpol.clear_polygons()
			if randi() % 2 == 1:
				navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]),randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				navpol.remove_outline(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				navpol.clear_outlines()
			if randi() % 2 == 1:
				navpol.add_outline(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				navpol.add_outline_at_index(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]),randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				navpol.add_polygon(PoolIntArray([randi()%14, randi()%30 + 14, randi()%100 + 35]))
			if randi() % 2 == 1:
				qq += str(navpol.get_outline(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(navpol.get_outline_count())
			if randi() % 2 == 1:
				qq += str(navpol.get_polygon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(navpol.get_polygon_count())
			if randi() % 2 == 1:
				qq += str(navpol.get_vertices())
			if randi() % 2 == 1:
				navpol.make_polygons_from_outlines()
			if randi() % 2 == 1:
				navpol.set_outline(randi() % Autoload.RANGE - Autoload.RANGE / 2,PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				navpol.set_vertices(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
	
			if randi() % 2 == 1:
				set_enabled(bool(randi()%2))

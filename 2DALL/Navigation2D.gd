extends Navigation2D

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
		if randi() % 2 == 1:
			qq += str(get_closest_point(Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(get_closest_point_owner(Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			navpol.clear_polygons()
		if randi() % 2 == 1:
			navpol.add_outline_at_index(PoolVector2Array([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())]),Autoload.get_randi())
		if randi() % 2 == 1:
			navpol.remove_outline(Autoload.get_randi())
		if randi() % 2 == 1:
			navpol.clear_outlines()
		if randi() % 2 == 1:
			navpol.add_outline(PoolVector2Array([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())]))
		if randi() % 2 == 1:
			navpol.add_outline_at_index(PoolVector2Array([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())]),Autoload.get_randi())
		if randi() % 2 == 1:
			navpol.add_polygon(PoolIntArray([randi()%14, randi()%30 + 14, randi()%100 + 35]))
		if randi() % 2 == 1:
			qq += str(navpol.get_outline(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(navpol.get_outline_count())
		if randi() % 2 == 1:
			qq += str(navpol.get_polygon(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(navpol.get_polygon_count())
		if randi() % 2 == 1:
			qq += str(navpol.get_vertices())
		if randi() % 2 == 1:
			navpol.make_polygons_from_outlines()
		if randi() % 2 == 1:
			navpol.set_outline(Autoload.get_randi(),PoolVector2Array([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())]))
		if randi() % 2 == 1:
			navpol.set_vertices(PoolVector2Array([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())]))
			
		if randi() % 2 == 1:
			navpoly_remove(navpoly_add(navpol,Transform2D(Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()))))
		if randi() % 2 == 1:
			navpoly_set_transform(Autoload.get_randi(),Transform2D(Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())))

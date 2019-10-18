extends Node2D

var q_NavigationPolygon : NavigationPolygon = NavigationPolygon.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_NavigationPolygon = NavigationPolygon.new()

		if randi() % 2 == 1:
			q_NavigationPolygon.add_outline( Autoload.get_poolvector2array() )
		if randi() % 2 == 1:
			q_NavigationPolygon.add_outline_at_index( Autoload.get_poolvector2array(), Autoload.get_int() )
			q_NavigationPolygon.add_polygon( Autoload.get_poolintarray())

		if randi() % 2 == 1:
			q_NavigationPolygon.clear_outlines()
		if randi() % 2 == 1:
			q_NavigationPolygon.clear_polygons()

		if randi() % 2 == 1:
			Autoload.qq = str(q_NavigationPolygon.get_outline(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_NavigationPolygon.get_outline_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_NavigationPolygon.get_polygon(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_NavigationPolygon.get_polygon_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_NavigationPolygon.get_vertices())

		if randi() % 2 == 1:
			q_NavigationPolygon.make_polygons_from_outlines()
		if randi() % 2 == 1:
			q_NavigationPolygon.remove_outline(Autoload.get_int() )

		if randi() % 2 == 1:
			q_NavigationPolygon.set_outline(Autoload.get_int(), Autoload.get_poolvector2array() )
		if randi() % 2 == 1:
			q_NavigationPolygon.set_vertices( Autoload.get_poolvector2array() )


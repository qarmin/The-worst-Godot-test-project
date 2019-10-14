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

		if randi() % 2 == 1:
			navpol.clear_polygons()
		if randi() % 2 == 1:
			navpol.add_outline_at_index(Autoload.get_poolvector2array(),Autoload.get_int())
		if randi() % 2 == 1:
			navpol.remove_outline(Autoload.get_int())
		if randi() % 2 == 1:
			navpol.clear_outlines()
		if randi() % 2 == 1:
			navpol.add_outline(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			navpol.add_outline_at_index(Autoload.get_poolvector2array(),Autoload.get_int())
		if randi() % 2 == 1:
			navpol.add_polygon(Autoload.get_poolintarray())
		if randi() % 2 == 1:
			qq += str(navpol.get_outline(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(navpol.get_outline_count())
		if randi() % 2 == 1:
			qq += str(navpol.get_polygon(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(navpol.get_polygon_count())
		if randi() % 2 == 1:
			qq += str(navpol.get_vertices())
		if randi() % 2 == 1:
			navpol.make_polygons_from_outlines()
		if randi() % 2 == 1:
			navpol.set_outline(Autoload.get_int(),Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			navpol.set_vertices(Autoload.get_poolvector2array())

		if randi() % 2 == 1:
			set_enabled(Autoload.get_bool())

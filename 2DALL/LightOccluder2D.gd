extends LightOccluder2D

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
		var occluder_polygon : OccluderPolygon2D = OccluderPolygon2D.new()

		if randi() % 2 == 1:
			occluder_polygon.set_closed(Autoload.get_bool())
		if randi() % 2 == 1:
			occluder_polygon.set_cull_mode(Autoload.get_int())
		if randi() % 2 == 1:
			occluder_polygon.set_polygon([Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float())])
		if randi() % 2 == 1:
			set_occluder_polygon(occluder_polygon)
		if randi() % 2 == 1:
			set_occluder_light_mask(Autoload.get_int())

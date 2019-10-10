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
			occluder_polygon.set_closed(bool(randi()%2))
		if randi() % 2 == 1:
			occluder_polygon.set_cull_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			occluder_polygon.set_polygon([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)])
		if randi() % 2 == 1:
			set_occluder_polygon(occluder_polygon)
		if randi() % 2 == 1:
			set_occluder_light_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)

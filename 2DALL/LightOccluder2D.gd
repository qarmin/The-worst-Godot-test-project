extends LightOccluder2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	
	if counter <= 0:
		var occluder_polygon : OccluderPolygon2D = OccluderPolygon2D.new()
		occluder_polygon.set_closed(bool(randi()%2))
		occluder_polygon.set_cull_mode((randi()%3))
		occluder_polygon.set_polygon([Vector2(randf() * -50,randf() * 50),Vector2(randf() * -50,randf() * 50),Vector2(randf() * -50,randf() * 50)])
		set_occluder_polygon(occluder_polygon)
		set_occluder_light_mask(randi()%5)
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
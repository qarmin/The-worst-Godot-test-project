extends Node2D

var q_OccluderPolygon2D : OccluderPolygon2D = OccluderPolygon2D.new()
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
			q_OccluderPolygon2D = OccluderPolygon2D.new()
			
		
		if randi() % 2 == 1:
			q_OccluderPolygon2D.set_closed(bool(randi()%2))
		if randi() % 2 == 1:
			q_OccluderPolygon2D.set_cull_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # CullMode
		if randi() % 2 == 1:
			q_OccluderPolygon2D.set_polygon(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]))

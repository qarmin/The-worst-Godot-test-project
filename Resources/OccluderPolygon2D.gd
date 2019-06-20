extends Node2D

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
		
		var q_OccluderPolygon2D : OccluderPolygon2D = OccluderPolygon2D.new()
		
		q_OccluderPolygon2D.set_closed(bool(randi()%2))
		q_OccluderPolygon2D.set_cull_mode(randi() %3) # CullMode
		q_OccluderPolygon2D.set_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]))
		
		if Autoload.WRONG_BUGS:
			pass

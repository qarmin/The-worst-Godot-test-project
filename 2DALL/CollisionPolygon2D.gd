extends CollisionPolygon2D

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
		
		set_build_mode(randi()%2) # Enum BuildMode
		set_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]))
		set_disabled(bool(randi()%2))
		set_one_way_collision(bool(randi()%2))
		set_one_way_collision_margin(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			set_build_mode(randi() % 1000 - 500) # Enum BuildMode
			set_polygon(PoolVector2Array([Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)]))
			set_disabled(bool(randi()%2))
			set_one_way_collision(bool(randi()%2))
			set_one_way_collision_margin(bool(randi()%2))
	else: #RANDI
		if randi() % 2 == 1:
			set_build_mode(randi() % 1000 - 500) # Enum BuildMode
		if randi() % 2 == 1:
			set_polygon(PoolVector2Array([Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)]))
		if randi() % 2 == 1:
			set_disabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_one_way_collision(bool(randi()%2))
		if randi() % 2 == 1:
			set_one_way_collision_margin(bool(randi()%2))

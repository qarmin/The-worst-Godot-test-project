extends CSGPolygon

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]))
		#set_mode(randi() % 3) # Mode
		set_depth(randf() * 50)
		set_spin_degrees(randf() * 50)
		set_spin_sides(randi()%15 + 3)
		set_path_node(".")
		set_path_interval(randf() * 50)
		set_path_rotation(randi() % 3) # PathRotation
		set_path_local(bool(randi()%2))
		set_path_continuous_u(bool(randi()%2))
		set_path_joined(bool(randi()%2))
		set_smooth_faces(bool(randi()%2))
		set_material(SpatialMaterial.new())
		
		
		if Autoload.WRONG_BUGS:
			set_polygon(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			set_mode(randi() % 1000 - 500) # Mode
			set_depth(randf() * 1000 - 500)
			set_spin_degrees(randf() * 1000 - 500)
			set_spin_sides(randi() % 1000 - 500)
			set_path_node(".hityuf")
			set_path_interval(randf() * 1000 - 500)
			set_path_rotation(randi() % 1000 - 500) # PathRotation
			set_path_local(bool(randi()%2))
			set_path_continuous_u(bool(randi()%2))
			set_path_joined(bool(randi()%2))
			set_smooth_faces(bool(randi()%2))
			set_material(SpatialMaterial.new())

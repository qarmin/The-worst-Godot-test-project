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
			
		if randi() % 2 == 1:
			set_polygon(PoolVector2Array([Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())]))
		if randi() % 2 == 1:
			set_mode(Autoload.get_randi()) # Mode
		if randi() % 2 == 1:
			set_depth(Autoload.get_randf())
		if randi() % 2 == 1:
			set_spin_degrees(Autoload.get_randf())
		if randi() % 2 == 1:
			set_spin_sides(Autoload.get_randi())
		if randi() % 2 == 1:
			set_path_node(".hityuf")
		if randi() % 2 == 1:
			set_path_interval(Autoload.get_randf())
		if randi() % 2 == 1:
			set_path_rotation(Autoload.get_randi()) # PathRotation
		if randi() % 2 == 1:
			set_path_local(bool(randi()%2))
		if randi() % 2 == 1:
			set_path_continuous_u(bool(randi()%2))
		if randi() % 2 == 1:
			set_path_joined(bool(randi()%2))
		if randi() % 2 == 1:
			set_smooth_faces(bool(randi()%2))
		if randi() % 2 == 1:
			set_material(SpatialMaterial.new())

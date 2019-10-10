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
			set_polygon(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
		if randi() % 2 == 1:
			set_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # Mode
		if randi() % 2 == 1:
			set_depth(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_spin_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_spin_sides(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_path_node(".hityuf")
		if randi() % 2 == 1:
			set_path_interval(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_path_rotation(randi() % Autoload.RANGE - Autoload.RANGE / 2) # PathRotation
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

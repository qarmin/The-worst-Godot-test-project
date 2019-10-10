extends ReflectionProbe

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
			set_update_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #UpdateMode
		if randi() % 2 == 1:
			set_intensity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_origin_offset(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_enable_box_projection(bool(randi()%2))
		if randi() % 2 == 1:
			set_enable_shadows(bool(randi()%2))
		if randi() % 2 == 1:
			set_cull_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_as_interior(bool(randi()%2))
		if randi() % 2 == 1:
			set_interior_ambient(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_interior_ambient_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_interior_ambient_probe_contribution(randf() * Autoload.RANGE - Autoload.RANGE / 2)

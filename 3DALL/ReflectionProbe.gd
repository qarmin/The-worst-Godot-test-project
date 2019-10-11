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
			set_update_mode(Autoload.get_randi()) #UpdateMode
		if randi() % 2 == 1:
			set_intensity(Autoload.get_randf())
		if randi() % 2 == 1:
			set_max_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			set_extents(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_origin_offset(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_enable_box_projection(bool(randi()%2))
		if randi() % 2 == 1:
			set_enable_shadows(bool(randi()%2))
		if randi() % 2 == 1:
			set_cull_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_as_interior(bool(randi()%2))
		if randi() % 2 == 1:
			set_interior_ambient(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_interior_ambient_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			set_interior_ambient_probe_contribution(Autoload.get_randf())

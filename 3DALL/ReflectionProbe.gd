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
		
		set_update_mode(randi() % 2) #UpdateMode
		set_intensity(randf() * 50)
		set_max_distance(randf() * 50)
		set_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_origin_offset(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_enable_box_projection(bool(randi()%2))
		set_enable_shadows(bool(randi()%2))
		set_cull_mask(randi()%50)
		set_as_interior(bool(randi()%2))
		set_interior_ambient(Color(randf(),randf(),randf(),randf()))
		set_interior_ambient_energy(randf() * 50)
		set_interior_ambient_probe_contribution(randf() * 50)
		
		
		if Autoload.WRONG_BUGS:
			set_update_mode(randi() % 1000 - 500) #UpdateMode
			set_intensity(randf() * 1000 - 500)
			set_max_distance(randf() * 1000 - 500)
			set_extents(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_origin_offset(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_enable_box_projection(bool(randi()%2))
			set_enable_shadows(bool(randi()%2))
			set_cull_mask(randi() % 1000 - 500)
			set_as_interior(bool(randi()%2))
			set_interior_ambient(Color(randf(),randf(),randf(),randf()))
			set_interior_ambient_energy(randf() * 1000 - 500)
			set_interior_ambient_probe_contribution(randf() * 1000 - 500)

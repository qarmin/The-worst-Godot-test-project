extends GIProbe

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
			set_subdiv(randi() % 10 - 50) # Subdiv
		if randi() % 2 == 1:
			set_extents(Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_dynamic_range(Autoload.get_randi())
		if randi() % 2 == 1:
			set_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			set_propagation(Autoload.get_randf())
		if randi() % 2 == 1:
			set_bias(Autoload.get_randf())
		if randi() % 2 == 1:
			set_normal_bias(Autoload.get_randf())
		if randi() % 2 == 1:
			set_interior(bool(randi()%2))
		if randi() % 2 == 1:
			set_compress(bool(randi()%2))
		if randi() % 2 == 1:
			set_probe_data(GIProbeData.new())
			
			if Autoload.SLOW_FUNCTIONS:
				bake(self, bool(randi()%2))
				debug_bake()

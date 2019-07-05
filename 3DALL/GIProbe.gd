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
		
		set_subdiv(randi() % (SUBDIV_MAX)) # Subdiv
		set_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_dynamic_range(randi()%50)
		set_energy(randf() * 50)
		set_propagation(randf() * 50)
		set_bias(randf() * 50)
		set_normal_bias(randf() * 50)
		set_interior(bool(randi()%2))
		set_compress(bool(randi()%2))
		set_probe_data(GIProbeData.new())
		
		if Autoload.SLOW_FUNCTIONS:
			bake(self, bool(randi()%2))
			debug_bake()
		
		if Autoload.WRONG_BUGS:
			set_subdiv(randi() % 10 - 50) # Subdiv
			set_extents(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500))
			set_dynamic_range(randi() % 1000 - 500)
			set_energy(randf() * 1000 - 500)
			set_propagation(randf() * 1000 - 500)
			set_bias(randf() * 1000 - 500)
			set_normal_bias(randf() * 1000 - 500)
			set_interior(bool(randi()%2))
			set_compress(bool(randi()%2))
			set_probe_data(GIProbeData.new())
			
			if Autoload.SLOW_FUNCTIONS:
				bake(self, bool(randi()%2))
				debug_bake()

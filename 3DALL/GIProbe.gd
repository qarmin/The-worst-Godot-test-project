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
			set_extents(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_dynamic_range(Autoload.get_int())
		if randi() % 2 == 1:
			set_energy(Autoload.get_float())
		if randi() % 2 == 1:
			set_propagation(Autoload.get_float())
		if randi() % 2 == 1:
			set_bias(Autoload.get_float())
		if randi() % 2 == 1:
			set_normal_bias(Autoload.get_float())
		if randi() % 2 == 1:
			set_interior(Autoload.get_bool())
		if randi() % 2 == 1:
			set_compress(Autoload.get_bool())
		if randi() % 2 == 1:
			set_probe_data(GIProbeData.new())
			
			if Autoload.SLOW_FUNCTIONS:
				bake(self, Autoload.get_bool())
				debug_bake()

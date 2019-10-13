extends Node2D

var q_GIProbeData : GIProbeData = GIProbeData.new()
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
		if randi() % 2 == 1:
			q_GIProbeData = GIProbeData.new()
			
		
		if randi() % 2 == 1:
			q_GIProbeData.set_bounds(AABB(Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			q_GIProbeData.set_cell_size(Autoload.get_float())
		if randi() % 2 == 1:
			q_GIProbeData.set_to_cell_xform(Transform(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			q_GIProbeData.set_dynamic_data(PoolIntArray([11,124,1241,24,21,214,12,11]))
		if randi() % 2 == 1:
			q_GIProbeData.set_dynamic_range(Autoload.get_int())
		if randi() % 2 == 1:
			q_GIProbeData.set_energy(Autoload.get_float())
		if randi() % 2 == 1:
			q_GIProbeData.set_bias(Autoload.get_float())
		if randi() % 2 == 1:
			q_GIProbeData.set_normal_bias(Autoload.get_float())
		if randi() % 2 == 1:
			q_GIProbeData.set_propagation(Autoload.get_float())
		if randi() % 2 == 1:
			q_GIProbeData.set_interior(Autoload.get_bool())
		if randi() % 2 == 1:
			q_GIProbeData.set_compress(Autoload.get_bool())

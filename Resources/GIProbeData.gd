extends Node2D

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
		
		var q_GIProbeData : GIProbeData = GIProbeData.new()
		
		q_GIProbeData.set_bounds(AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		q_GIProbeData.set_cell_size(randf() * 50)
		q_GIProbeData.set_to_cell_xform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		q_GIProbeData.set_dynamic_data(PoolIntArray([11,124,1241,24,21,214,12,11]))
		q_GIProbeData.set_dynamic_range(randi()%50)
		q_GIProbeData.set_energy(randf() * 50)
		q_GIProbeData.set_bias(randf() * 50)
		q_GIProbeData.set_normal_bias(randf() * 50)
		q_GIProbeData.set_propagation(randf() * 50)
		q_GIProbeData.set_interior(bool(randi()%2))
		q_GIProbeData.set_compress(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			pass

extends ConeTwistJoint

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		_set_swing_span(randf() * 50)
		_set_twist_span(randf() * 50)
		for i in range(PARAM_MAX):
			set_param(i, randf() * 50)
		
		#Joint
		set_node_a(".")
		set_node_b(".")
		set_solver_priority(randi()%50)
		set_exclude_nodes_from_collision(bool(randi()%2))
		

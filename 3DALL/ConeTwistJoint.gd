extends ConeTwistJoint

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
		if !Autoload.RANDI:
			
			_set_swing_span(randf() * 50)
			_set_twist_span(randf() * 50)
			for i in range(PARAM_MAX):
				set_param(i, randf() * 50)
			
			#Joint
			set_node_a(".")
			set_node_b(".")
			set_solver_priority(randi()%50)
			set_exclude_nodes_from_collision(bool(randi()%2))
			
	
			if Autoload.WRONG_BUGS:
	
				_set_swing_span(Autoload.get_randf())
				_set_twist_span(Autoload.get_randf())
				set_param(randi() % 30 - 15, Autoload.get_randf())
				
				#Joint
				set_node_a(Autoload.get_string())
				set_node_b(Autoload.get_string())
				set_solver_priority(Autoload.get_randi())
				set_exclude_nodes_from_collision(bool(randi()%2))
		else: #RANDI
			if randi() % 2 == 1:
				_set_swing_span(Autoload.get_randf())
			if randi() % 2 == 1:
				_set_twist_span(Autoload.get_randf())
			if randi() % 2 == 1:
				set_param(randi() % 30 - 15, Autoload.get_randf())
				
				#Joint
			if randi() % 2 == 1:
				set_node_a(Autoload.get_string())
			if randi() % 2 == 1:
				set_node_b(Autoload.get_string())
			if randi() % 2 == 1:
				set_solver_priority(Autoload.get_randi())
			if randi() % 2 == 1:
				set_exclude_nodes_from_collision(bool(randi()%2))

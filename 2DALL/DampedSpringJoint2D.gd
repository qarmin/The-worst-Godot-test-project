extends DampedSpringJoint2D

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
			set_length(Autoload.get_float())
		if randi() % 2 == 1:
			set_rest_length(Autoload.get_float())
		if randi() % 2 == 1:
			set_stiffness(Autoload.get_float())
		if randi() % 2 == 1:
			set_damping(Autoload.get_float())
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(Autoload.get_bool())
			
			# Joint2D
		if randi() % 2 == 1:
			set_node_a(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			set_node_b(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			set_bias(Autoload.get_float())
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(Autoload.get_bool())

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
			set_length(Autoload.get_randf())
		if randi() % 2 == 1:
			set_rest_length(Autoload.get_randf())
		if randi() % 2 == 1:
			set_stiffness(Autoload.get_randf())
		if randi() % 2 == 1:
			set_damping(Autoload.get_randf())
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(bool(randi()%2))
			
			# Joint2D
		if randi() % 2 == 1:
			set_node_a("../" + get_parent().get_child(randi() % get_parent().get_child_count()).get_name())
		if randi() % 2 == 1:
			set_node_b("../" + get_parent().get_child(randi() % get_parent().get_child_count()).get_name())
		if randi() % 2 == 1:
			set_bias(Autoload.get_randf())
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(bool(randi()%2))

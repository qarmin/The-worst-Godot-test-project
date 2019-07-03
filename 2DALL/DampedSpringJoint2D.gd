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
		
		set_length(randf() * 50)
		set_rest_length(randf() * 50)
		set_stiffness(randf() * 50)
		set_damping(randf() * 16)
		set_exclude_nodes_from_collision(bool(randi()%2))
		
		# Joint2D
		set_node_a("../RigidBody2D")
		set_node_b("../KinematicBody2D")
		set_bias(randf() * 50)
		set_exclude_nodes_from_collision(bool(randi()%2))
		
		
		if Autoload.WRONG_BUGS:
			set_length(randf() * 1000 - 500)
			set_rest_length(randf() * 1000 - 500)
			set_stiffness(randf() * 1000 - 500)
			set_damping(randf() * 1000 - 500)
			set_exclude_nodes_from_collision(bool(randi()%2))
			
			# Joint2D
			set_node_a("../" + get_parent().get_child(randi() % get_parent().get_child_count()).get_name())
			set_node_b("../" + get_parent().get_child(randi() % get_parent().get_child_count()).get_name())
			set_bias(randf() * 1000 - 500)
			set_exclude_nodes_from_collision(bool(randi()%2))

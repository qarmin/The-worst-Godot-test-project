extends DampedSpringJoint2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50)
	#  randf() * 50
	#  bool(randi()%2)
	#  randi()%50
	
	if counter <= 0:
		set_length(randf() * 50)
		set_rest_length(randf() * 50)
		set_stiffness(randf() * 50)
		set_damping(randf() * 16)
		set_bias(randf()  * 0.8)
		set_exclude_nodes_from_collision(bool(randi()%2))
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	
	
extends GrooveJoint2D

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
		set_initial_offset(randf() * 50)
		set_bias(randf() * 0.8)
		set_exclude_nodes_from_collision(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			set_length(randf() * 1000 - 500)
			set_initial_offset(randf() * 1000 - 500)
			set_bias(randf() * 1000 - 500)
			set_exclude_nodes_from_collision(bool(randi()%2))

	else: #RANDI
		if randi() % 2 == 1:
			set_length(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_initial_offset(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_bias(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(bool(randi()%2))

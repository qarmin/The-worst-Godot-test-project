extends PinJoint2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50)
	#  randf() * 50
	#  bool(randi()%2)
	#  randi()%50
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_softness(randf() *  10)
		set_bias(randf() * 0.8)
		set_exclude_nodes_from_collision(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			set_softness(randf() * 1000 - 500)
			set_bias(randf() * 1000 - 500)
			set_exclude_nodes_from_collision(bool(randi()%2))
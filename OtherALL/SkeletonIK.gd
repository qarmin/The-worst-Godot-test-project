extends SkeletonIK

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
		
		set_root_bone("asfasfasf")
		set_tip_bone("asfasfasf")
		set_interpolation(randf() * 50)
		set_target_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_override_tip_basis(bool(randi()%2))
		set_use_magnet(bool(randi()%2))
		set_magnet_position(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_target_node(".")
		set_min_distance(randf() * 50)
		set_max_iterations(randi()%50)
		
		qq += str(get_parent_skeleton())
		qq += str(is_running())
		start(bool(randi()%2))
		stop()
		
		if Autoload.WRONG_BUGS:
			set_root_bone("asfasfasf")
			set_tip_bone("asfasfasf")
			set_interpolation(randf() * 1000 - 500)
			set_target_transform(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_override_tip_basis(bool(randi()%2))
			set_use_magnet(bool(randi()%2))
			set_magnet_position(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_target_node(".qwfqwfq")
			set_min_distance(randf() * 1000 - 500)
			set_max_iterations(randi() % 1000 - 500)
			
			qq += str(get_parent_skeleton())
			qq += str(is_running())
			start(bool(randi()%2))
			stop()

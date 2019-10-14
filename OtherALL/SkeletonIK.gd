extends SkeletonIK

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_root_bone(Autoload.get_string())
		if randi() % 2 == 1:
			set_tip_bone(Autoload.get_string())
		if randi() % 2 == 1:
			set_interpolation(Autoload.get_float())
		if randi() % 2 == 1:
			set_target_transform(Autoload.get_transform())
		if randi() % 2 == 1:
			set_override_tip_basis(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_magnet(Autoload.get_bool())
		if randi() % 2 == 1:
			set_magnet_position(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_target_node(Autoload.get_string())
		if randi() % 2 == 1:
			set_min_distance(Autoload.get_float())
		if randi() % 2 == 1:
			set_max_iterations(Autoload.get_int())
			
		if randi() % 2 == 1:
			qq += str(get_parent_skeleton())
		if randi() % 2 == 1:
			qq += str(is_running())
		if randi() % 2 == 1:
			start(Autoload.get_bool())
		if randi() % 2 == 1:
			stop()

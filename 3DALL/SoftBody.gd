extends SoftBody

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
		
		set_collision_layer(randi()%50000)
		set_collision_mask(randi()%50000)
		set_parent_collision_ignore(".")
		set_simulation_precision(randi()%50)
#		set_total_mass(randf() * 50)
		set_linear_stiffness(randf() * 50)
		set_areaAngular_stiffness(randf() * 50)
		set_volume_stiffness(randf() * 50)
		set_pressure_coefficient(randf() * 50)
		set_damping_coefficient(randf() * 50)
		set_drag_coefficient(randf() * 50)
		set_pose_matching_coefficient(randf() * 50)
		
		#add_collision_exception_with(self)
		
		qq += str(get_collision_exceptions())
		qq += str(get_collision_layer_bit(randi()%20))
		qq += str(get_collision_mask_bit(randi()%20))
		
		qq += str(is_ray_pickable())
		#remove_collision_exception_with(get_parent())
		
		set_collision_layer_bit(randi()%20,bool(randi()%2))
		set_collision_mask_bit(randi()%20,bool(randi()%2))
		set_ray_pickable(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			set_collision_layer(randi() % 1000 - 500)
			set_collision_mask(randi() % 1000 - 500)
			set_parent_collision_ignore(".asfasfa")
			set_simulation_precision(randi() % 1000 - 500)
			set_total_mass(randf() * 1000 - 500)
			set_linear_stiffness(randf() * 1000 - 500)
			set_areaAngular_stiffness(randf() * 1000 - 500)
			set_volume_stiffness(randf() * 1000 - 500)
			set_pressure_coefficient(randf() * 1000 - 500)
			set_damping_coefficient(randf() * 1000 - 500)
			set_drag_coefficient(randf() * 1000 - 500)
			set_pose_matching_coefficient(randf() * 1000 - 500)
			
			add_collision_exception_with(self)
			
			qq += str(get_collision_exceptions())
			qq += str(get_collision_layer_bit(randi() % 1000 - 500))
			qq += str(get_collision_mask_bit(randi() % 1000 - 500))
			
			qq += str(is_ray_pickable())
			remove_collision_exception_with(get_parent())
			
			set_collision_layer_bit(randi() % 1000 - 500,bool(randi()%2))
			set_collision_mask_bit(randi() % 1000 - 500,bool(randi()%2))
			set_ray_pickable(bool(randi()%2))

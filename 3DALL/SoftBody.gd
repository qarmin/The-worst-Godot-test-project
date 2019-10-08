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
		if !Autoload.RANDI:
			
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
				set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_parent_collision_ignore(".asfasfa")
				set_simulation_precision(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_total_mass(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_linear_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_areaAngular_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_volume_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_pressure_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_damping_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_drag_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_pose_matching_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
				add_collision_exception_with(self)
				
				qq += str(get_collision_exceptions())
				qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				
				qq += str(is_ray_pickable())
				remove_collision_exception_with(get_parent())
				
				set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				set_ray_pickable(bool(randi()%2))
	
		else: #RANDI
			if randi() % 2 == 1:
				set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_parent_collision_ignore(".asfasfa")
			if randi() % 2 == 1:
				set_simulation_precision(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_total_mass(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_linear_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_areaAngular_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_volume_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_pressure_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_damping_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_drag_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_pose_matching_coefficient(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				add_collision_exception_with(self)
				
			if randi() % 2 == 1:
				qq += str(get_collision_exceptions())
			if randi() % 2 == 1:
				qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				
			if randi() % 2 == 1:
				qq += str(is_ray_pickable())
			if randi() % 2 == 1:
				remove_collision_exception_with(get_parent())
				
			if randi() % 2 == 1:
				set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				set_ray_pickable(bool(randi()%2))

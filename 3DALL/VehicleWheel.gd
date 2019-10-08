extends VehicleWheel

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			set_use_as_traction(bool(randi()%2))
			set_use_as_steering(bool(randi()%2))
			set_roll_influence(randf() * 50)
			set_radius(randf() * 50)
			set_suspension_rest_length(randf() * 50)
			set_friction_slip(randf() * 50)
			set_suspension_travel(randf() * 50)
			set_suspension_stiffness(randf() * 50)
			set_suspension_max_force(randf() * 50)
			set_damping_compression(randf() * 50)
			set_damping_relaxation(randf() * 50)
			
			qq += str(get_rpm())
			qq += str(get_skidinfo())
			qq += str(is_in_contact())
					
			if Autoload.WRONG_BUGS:
				set_use_as_traction(bool(randi()%2))
				set_use_as_steering(bool(randi()%2))
				set_roll_influence(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_suspension_rest_length(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_friction_slip(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_suspension_travel(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_suspension_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_suspension_max_force(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_damping_compression(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_damping_relaxation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
				qq += str(get_rpm())
				qq += str(get_skidinfo())
				qq += str(is_in_contact())
	
		else: #RANDI
			if randi() % 2 == 1:
				set_use_as_traction(bool(randi()%2))
			if randi() % 2 == 1:
				set_use_as_steering(bool(randi()%2))
			if randi() % 2 == 1:
				set_roll_influence(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_suspension_rest_length(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_friction_slip(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_suspension_travel(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_suspension_stiffness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_suspension_max_force(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_damping_compression(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_damping_relaxation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				qq += str(get_rpm())
			if randi() % 2 == 1:
				qq += str(get_skidinfo())
			if randi() % 2 == 1:
				qq += str(is_in_contact())

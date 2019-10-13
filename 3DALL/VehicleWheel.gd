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

		if randi() % 2 == 1:
			set_use_as_traction(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_as_steering(Autoload.get_bool())
		if randi() % 2 == 1:
			set_roll_influence(Autoload.get_float())
		if randi() % 2 == 1:
			set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_suspension_rest_length(Autoload.get_float())
		if randi() % 2 == 1:
			set_friction_slip(Autoload.get_float())
		if randi() % 2 == 1:
			set_suspension_travel(Autoload.get_float())
		if randi() % 2 == 1:
			set_suspension_stiffness(Autoload.get_float())
		if randi() % 2 == 1:
			set_suspension_max_force(Autoload.get_float())
		if randi() % 2 == 1:
			set_damping_compression(Autoload.get_float())
		if randi() % 2 == 1:
			set_damping_relaxation(Autoload.get_float())
			
		if randi() % 2 == 1:
			qq += str(get_rpm())
		if randi() % 2 == 1:
			qq += str(get_skidinfo())
		if randi() % 2 == 1:
			qq += str(is_in_contact())

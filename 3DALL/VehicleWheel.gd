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

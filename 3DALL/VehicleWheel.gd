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
			set_roll_influence(randf() * 1000 - 500)
			set_radius(randf() * 1000 - 500)
			set_suspension_rest_length(randf() * 1000 - 500)
			set_friction_slip(randf() * 1000 - 500)
			set_suspension_travel(randf() * 1000 - 500)
			set_suspension_stiffness(randf() * 1000 - 500)
			set_suspension_max_force(randf() * 1000 - 500)
			set_damping_compression(randf() * 1000 - 500)
			set_damping_relaxation(randf() * 1000 - 500)
			
			qq += str(get_rpm())
			qq += str(get_skidinfo())
			qq += str(is_in_contact())

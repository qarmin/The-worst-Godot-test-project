extends VehicleBody

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
		
		set_engine_force(randf() * 50)
		set_brake(randf() * 50)
		set_steering(randf() * 50)
		
		for i in get_children():
			if i.get_name().begins_with("VehicleWheel"):
				i.set_use_as_traction(bool(randi()%2))
				i.set_use_as_steering(bool(randi()%2))
				i.set_roll_influence(randf() * 50)
				i.set_radius(randf() * 50)
				i.set_suspension_rest_length(randf() * 50)
				i.set_friction_slip(randf() * 50)
				i.set_suspension_travel(randf() * 50)
				i.set_suspension_stiffness(randf() * 50)
				i.set_suspension_max_force(randf() * 50)
				i.set_damping_compression(randf() * 50)
				i.set_damping_relaxation(randf() * 50)
				
				qq += str(i.get_rpm())
				qq += str(i.get_skidinfo())
				qq += str(i.is_in_contact())
				
		if Autoload.WRONG_BUGS:
			set_engine_force(randf() * 1000 - 500)
			set_brake(randf() * 1000 - 500)
			set_steering(randf() * 1000 - 500)
			
			for i in get_children():
				if i.get_name().begins_with("VehicleWheel"):
					i.set_use_as_traction(bool(randi()%2))
					i.set_use_as_steering(bool(randi()%2))
					i.set_roll_influence(randf() * 1000 - 500)
					i.set_radius(randf() * 1000 - 500)
					i.set_suspension_rest_length(randf() * 1000 - 500)
					i.set_friction_slip(randf() * 1000 - 500)
					i.set_suspension_travel(randf() * 1000 - 500)
					i.set_suspension_stiffness(randf() * 1000 - 500)
					i.set_suspension_max_force(randf() * 1000 - 500)
					i.set_damping_compression(randf() * 1000 - 500)
					i.set_damping_relaxation(randf() * 1000 - 500)
					
					qq += str(i.get_rpm())
					qq += str(i.get_skidinfo())
					qq += str(i.is_in_contact())

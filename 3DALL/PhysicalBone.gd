extends PhysicalBone

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
			set_joint_type(Autoload.get_int()) #JOINT_TYPE
		if randi() % 2 == 1:
			set_joint_offset(Transform(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			set_body_offset(Transform(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			set_mass(Autoload.get_float())
		if randi() % 2 == 1:
			set_weight(Autoload.get_float())
		if randi() % 2 == 1:
			set_friction(Autoload.get_float())
		if randi() % 2 == 1:
			set_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			set_gravity_scale(Autoload.get_float())
			
		if randi() % 2 == 1:
			qq += str(get_bone_id())
		if randi() % 2 == 1:
			qq += str(get_simulate_physics())
		if randi() % 2 == 1:
			qq += str(is_simulating_physics())
		if randi() % 2 == 1:
			qq += str(is_static_body())

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
		
		set_joint_type(randi() % 6) #JOINT_TYPE
		set_joint_offset(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_body_offset(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_mass(randf() * 50)
		set_weight(randf() * 50)
		set_friction(randf())
		set_bounce(randf())
		set_gravity_scale(randf() * 50)
		
		qq += str(get_bone_id())
		qq += str(get_simulate_physics())
		qq += str(is_simulating_physics())
		qq += str(is_static_body())
		
		if Autoload.WRONG_BUGS:
			set_joint_type(randi() % 1000 - 500) #JOINT_TYPE
			set_joint_offset(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_body_offset(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_mass(randf() * 1000 - 500)
			set_weight(randf() * 1000 - 500)
			set_friction(randf() * 1000 - 500)
			set_bounce(randf() * 1000 - 500)
			set_gravity_scale(randf() * 1000 - 500)
			
			qq += str(get_bone_id())
			qq += str(get_simulate_physics())
			qq += str(is_simulating_physics())
			qq += str(is_static_body())

	else: #RANDI
		if randi() % 2 == 1:
			set_joint_type(randi() % 1000 - 500) #JOINT_TYPE
		if randi() % 2 == 1:
			set_joint_offset(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
		if randi() % 2 == 1:
			set_body_offset(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
		if randi() % 2 == 1:
			set_mass(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_weight(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_friction(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_bounce(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_gravity_scale(randf() * 1000 - 500)
			
		if randi() % 2 == 1:
			qq += str(get_bone_id())
		if randi() % 2 == 1:
			qq += str(get_simulate_physics())
		if randi() % 2 == 1:
			qq += str(is_simulating_physics())
		if randi() % 2 == 1:
			qq += str(is_static_body())

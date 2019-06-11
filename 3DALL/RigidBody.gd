extends RigidBody

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_shape(BoxShape.new())
				i.set_disabled(bool(randi()%2))
				i.make_convex_from_brothers()
				i.resource_changed(BoxShape.new())

		set_mode(randi()%4)
		set_mass(randf() * 50)
		set_weight(randf() * 50)
		#Deprecated set_friction(randf())
		#Deprecated set_bounce(randf())
		set_physics_material_override(PhysicsMaterial.new())
		set_gravity_scale(randf() * 50)
		set_use_custom_integrator(bool(randi()%2))
		set_use_continuous_collision_detection(bool(randi()%2))
		set_max_contacts_reported(randi()%50)
		set_contact_monitor(bool(randi()%2))
		set_sleeping(bool(randi()%2))
		set_can_sleep(bool(randi()%2))
		for i in range(3): # 3 Axis
			set_axis_lock(i,bool(randi()%2))
		set_linear_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_linear_damp(randf() * 50)
		set_angular_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_angular_damp(randf() * 50)

		#_integrate_forces()

		add_central_force(Vector3(randf() * 50,randf() * 50,randf() * 50))
		add_force(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50))
		add_torque(Vector3(randf() * 50,randf() * 50,randf() * 50))
		apply_central_impulse(Vector3(randf() * 50,randf() * 50,randf() * 50))
		apply_impulse(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50))
		apply_torque_impulse(Vector3(randf() * 50,randf() * 50,randf() * 50))

		set_axis_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
		if contact_monitor:
			qq += str(get_colliding_bodies())
		#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(test_motion(Vector2(randf() * 50,randf() * 50)))
extends RigidBody2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
	
			set_mode(randi()%4)
			set_mass(randf() * 50)
			set_inertia(randf() * 50)
			set_weight(randf() * 50)
			#Deprecated set_friction(randf())
			#Deprecated set_bounce(randf())
			set_physics_material_override(load("res://RES/PhysicsMaterial.tres"))
			set_gravity_scale(randf() * 50)
			set_use_custom_integrator(bool(randi()%2))
			set_continuous_collision_detection_mode(randi()%3)
			set_max_contacts_reported(randi()%50)
			set_contact_monitor(bool(randi()%2))
			set_sleeping(bool(randi()%2))
			set_can_sleep(bool(randi()%2))
			set_linear_velocity(Vector2(randf() * 50,randf() * 50))
			set_linear_damp(randf() * 50)
			set_angular_velocity(randf() * 50)
			set_angular_damp(randf() * 50)
			set_applied_force(Vector2(randf() * 50,randf() * 50))
			set_applied_torque(randf() * 50)
	
			#_integrate_forces()
	
			add_central_force(Vector2(randf() * 50,randf() * 50))
			add_force(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
			add_torque(randf() * 50)
			apply_central_impulse(Vector2(randf() * 50,randf() * 50))
			apply_impulse(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
			apply_torque_impulse(randf() * 50)
	
			set_axis_velocity(Vector2(randf() * 50,randf() * 50))
			if contact_monitor:
				qq += str(get_colliding_bodies())
			if Autoload.SLOW_FUNCTIONS:
				qq += str(test_motion(Vector2(randf() * 50,randf() * 50)))
			
			
			## With Errors
			if Autoload.WRONG_BUGS:
		
				set_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_mass(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_inertia(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_weight(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_friction(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_bounce(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_gravity_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_physics_material_override(load("res://RES/PhysicsMaterial.tres"))
				set_use_custom_integrator(bool(randi()%2))
				set_continuous_collision_detection_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_max_contacts_reported(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_contact_monitor(bool(randi()%2))
				set_sleeping(bool(randi()%2))
				set_can_sleep(bool(randi()%2))
				set_linear_velocity(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_linear_damp(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_angular_velocity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_angular_damp(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_applied_force(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_applied_torque(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		
				#_integrate_forces()
		
				add_central_force(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				add_force(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				add_torque(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				apply_central_impulse(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				apply_impulse(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				apply_torque_impulse(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		
				set_axis_velocity(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				if Autoload.SLOW_FUNCTIONS:
					qq += str(test_motion(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
					
		else: #RANDI
			if randi() % 2 == 1:
				set_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_mass(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_inertia(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_weight(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_friction(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_bounce(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_gravity_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_physics_material_override(load("res://RES/PhysicsMaterial.tres"))
			if randi() % 2 == 1:
				set_use_custom_integrator(bool(randi()%2))
			if randi() % 2 == 1:
				set_continuous_collision_detection_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_max_contacts_reported(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_contact_monitor(bool(randi()%2))
			if randi() % 2 == 1:
				set_sleeping(bool(randi()%2))
			if randi() % 2 == 1:
				set_can_sleep(bool(randi()%2))
			if randi() % 2 == 1:
				set_linear_velocity(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_linear_damp(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_angular_velocity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_angular_damp(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_applied_force(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_applied_torque(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		
				#_integrate_forces()
		
			if randi() % 2 == 1:
				add_central_force(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				add_force(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				add_torque(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				apply_central_impulse(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				apply_impulse(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				apply_torque_impulse(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		
			if randi() % 2 == 1:
				set_axis_velocity(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				if Autoload.SLOW_FUNCTIONS:
					qq += str(test_motion(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))

extends Node2D

@onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_PhysicsDirectBodyState : PhysicsDirectBodyState = PhysicsDirectBodyState.new()
#
#		q_PhysicsDirectBodyState.get_step()
#		q_PhysicsDirectBodyState.get_inverse_mass()
#		q_PhysicsDirectBodyState.get_total_angular_damp()
#		q_PhysicsDirectBodyState.get_total_linear_damp()
#		q_PhysicsDirectBodyState.get_inverse_inertia()
#		q_PhysicsDirectBodyState.get_total_gravity()
#		q_PhysicsDirectBodyState.get_center_of_mass()
#		q_PhysicsDirectBodyState.get_principal_inertia_axes()
#		q_PhysicsDirectBodyState.set_angular_velocity(Autoload.get_vector3())
#		q_PhysicsDirectBodyState.set_linear_velocity(Autoload.get_vector3())
#		q_PhysicsDirectBodyState.set_sleep_state(Autoload.get_bool())
#		q_PhysicsDirectBodyState.set_transform(Autoload.get_transform())
#
#		q_PhysicsDirectBodyState.add_central_force( Autoload.get_vector3())
#		q_PhysicsDirectBodyState.add_force( Autoload.get_vector3(), Autoload.get_vector3())
#		q_PhysicsDirectBodyState.add_torque( Autoload.get_vector3())
#
#		q_PhysicsDirectBodyState.apply_central_impulse( Autoload.get_vector3())
#		q_PhysicsDirectBodyState.apply_impulse( Autoload.get_vector3(), Autoload.get_vector3())
#		q_PhysicsDirectBodyState.apply_torque_impulse( Autoload.get_vector3())
#
#		q_PhysicsDirectBodyState.get_contact_collider( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_collider_id( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_collider_object( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_collider_position( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_collider_shape( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_collider_velocity_at_position( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_count()
#		q_PhysicsDirectBodyState.get_contact_impulse( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_local_normal( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_local_position( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_contact_local_shape( Autoload.get_int())
#		q_PhysicsDirectBodyState.get_space_state()
#
#		q_PhysicsDirectBodyState.integrate_forces()
#

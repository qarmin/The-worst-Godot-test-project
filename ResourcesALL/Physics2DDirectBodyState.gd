extends Node2D

@onready var counter: float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_Physics2DDirectBodyState : Physics2DDirectBodyState = Physics2DDirectBodyState.new()
#
#		q_Physics2DDirectBodyState.get_step()
#		q_Physics2DDirectBodyState.get_inverse_mass()
#		q_Physics2DDirectBodyState.get_inverse_inertia()
#		q_Physics2DDirectBodyState.get_total_angular_damp()
#		q_Physics2DDirectBodyState.get_total_linear_damp()
#		q_Physics2DDirectBodyState.get_total_gravity()
#		q_Physics2DDirectBodyState.set_angular_velocity(Autoload.get_float())
#		q_Physics2DDirectBodyState.set_linear_velocity(Autoload.get_vector2())
#		q_Physics2DDirectBodyState.set_sleep_state(Autoload.get_bool())
#		q_Physics2DDirectBodyState.set_transform(Autoload.get_transform2d())
#
#		q_Physics2DDirectBodyState.add_central_force( Autoload.get_vector2())
#		q_Physics2DDirectBodyState.add_force( Autoload.get_vector2(), Autoload.get_vector2())
#		q_Physics2DDirectBodyState.add_torque( Autoload.get_float())
#
#		q_Physics2DDirectBodyState.apply_central_impulse( Autoload.get_vector2())
#		q_Physics2DDirectBodyState.apply_impulse( Autoload.get_vector2(), Autoload.get_vector2())
#		q_Physics2DDirectBodyState.apply_torque_impulse( Autoload.get_float())
#
#		q_Physics2DDirectBodyState.get_contact_collider( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_collider_id( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_collider_object( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_collider_position( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_collider_shape( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_collider_shape_metadata( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_collider_velocity_at_position( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_count()
#		q_Physics2DDirectBodyState.get_contact_local_normal( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_local_position( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_contact_local_shape( Autoload.get_int())
#		q_Physics2DDirectBodyState.get_space_state()
#
#		q_Physics2DDirectBodyState.integrate_forces()
#

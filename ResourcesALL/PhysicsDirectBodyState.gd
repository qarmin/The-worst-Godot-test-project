extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
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
#		q_PhysicsDirectBodyState.add_central_force( Autoload.get_vector3() )
#		q_PhysicsDirectBodyState.add_force( Autoload.get_vector3(), Autoload.get_vector3() )
#		q_PhysicsDirectBodyState.add_torque( Autoload.get_vector3() )
#
#		q_PhysicsDirectBodyState.apply_central_impulse( Autoload.get_vector3() )
#		q_PhysicsDirectBodyState.apply_impulse( Autoload.get_vector3(), Autoload.get_vector3() )
#		q_PhysicsDirectBodyState.apply_torque_impulse( Autoload.get_vector3() )
#
#		q_PhysicsDirectBodyState.get_contact_collider( 0 )
#		q_PhysicsDirectBodyState.get_contact_collider_id( 0 )
#		q_PhysicsDirectBodyState.get_contact_collider_object( 0 )
#		q_PhysicsDirectBodyState.get_contact_collider_position( 0 )
#		q_PhysicsDirectBodyState.get_contact_collider_shape( 0 )
#		q_PhysicsDirectBodyState.get_contact_collider_velocity_at_position( 0 )
#		q_PhysicsDirectBodyState.get_contact_count()
#		q_PhysicsDirectBodyState.get_contact_impulse( 0 )
#		q_PhysicsDirectBodyState.get_contact_local_normal( 0 )
#		q_PhysicsDirectBodyState.get_contact_local_position( 0 )
#		q_PhysicsDirectBodyState.get_contact_local_shape( 0 )
#		q_PhysicsDirectBodyState.get_space_state()
#
#		q_PhysicsDirectBodyState.integrate_forces()
#

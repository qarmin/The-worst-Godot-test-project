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
#		if !Autoload.RANDI:
#			pass
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
#		q_PhysicsDirectBodyState.set_angular_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
#		q_PhysicsDirectBodyState.set_linear_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
#		q_PhysicsDirectBodyState.set_sleep_state(bool(randi()%2))
#		q_PhysicsDirectBodyState.set_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#
#		q_PhysicsDirectBodyState.add_central_force( Vector3(randf() * 50,randf() * 50,randf() * 50) )
#		q_PhysicsDirectBodyState.add_force( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50) )
#		q_PhysicsDirectBodyState.add_torque( Vector3(randf() * 50,randf() * 50,randf() * 50) )
#
#		q_PhysicsDirectBodyState.apply_central_impulse( Vector3(randf() * 50,randf() * 50,randf() * 50) )
#		q_PhysicsDirectBodyState.apply_impulse( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50) )
#		q_PhysicsDirectBodyState.apply_torque_impulse( Vector3(randf() * 50,randf() * 50,randf() * 50) )
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
#		if Autoload.WRONG_BUGS:
#			pass

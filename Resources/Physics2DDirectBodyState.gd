extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
#		var q_Physics2DDirectBodyState : Physics2DDirectBodyState = Physics2DDirectBodyState.new()
#
#		q_Physics2DDirectBodyState.get_step()
#		q_Physics2DDirectBodyState.get_inverse_mass()
#		q_Physics2DDirectBodyState.get_inverse_inertia()
#		q_Physics2DDirectBodyState.get_total_angular_damp()
#		q_Physics2DDirectBodyState.get_total_linear_damp()
#		q_Physics2DDirectBodyState.get_total_gravity()
#		q_Physics2DDirectBodyState.set_angular_velocity(randf() * 50)
#		q_Physics2DDirectBodyState.set_linear_velocity(Vector2(randf() * 50,randf() * 50))
#		q_Physics2DDirectBodyState.set_sleep_state(bool(randi()%2))
#		q_Physics2DDirectBodyState.set_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#
#		q_Physics2DDirectBodyState.add_central_force( Vector2(randf() * 50,randf() * 50) )
#		q_Physics2DDirectBodyState.add_force( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50) )
#		q_Physics2DDirectBodyState.add_torque( randf() * 50)
#
#		q_Physics2DDirectBodyState.apply_central_impulse( Vector2(randf() * 50,randf() * 50))
#		q_Physics2DDirectBodyState.apply_impulse( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50) )
#		q_Physics2DDirectBodyState.apply_torque_impulse( randf() * 50)
#
#		q_Physics2DDirectBodyState.get_contact_collider( 0 )
#		q_Physics2DDirectBodyState.get_contact_collider_id( 0 )
#		q_Physics2DDirectBodyState.get_contact_collider_object( 0 )
#		q_Physics2DDirectBodyState.get_contact_collider_position( 0 )
#		q_Physics2DDirectBodyState.get_contact_collider_shape( 0 )
#		q_Physics2DDirectBodyState.get_contact_collider_shape_metadata( 0 )
#		q_Physics2DDirectBodyState.get_contact_collider_velocity_at_position( 0 )
#		q_Physics2DDirectBodyState.get_contact_count()
#		q_Physics2DDirectBodyState.get_contact_local_normal( 0 )
#		q_Physics2DDirectBodyState.get_contact_local_position( 0 )
#		q_Physics2DDirectBodyState.get_contact_local_shape( 0 )
#		q_Physics2DDirectBodyState.get_space_state()
#
#		q_Physics2DDirectBodyState.integrate_forces()
#
#		if Autoload.WRONG_BUGS:
#			pass

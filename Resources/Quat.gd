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
		
#		var q_Quat : Quat
#
#		q_Quat = Quat( Ba
#		q_Quat = Quat(
#		q_Quat = Quat(
#		q_Quat = Quat(
#
#		q_Quat.cubic_slerp( Quat b, Quat pre_a, Quat post_b, float t )
#		q_Quat.dot( Quat b )
#		q_Quat.get_euler()
#		q_Quat.inverse()
#		q_Quat.is_normalized()
#
#		q_Quat.length()
#		q_Quat.length_squared()
#
#		q_Quat.normalized()
#
#		q_Quat.set_axis_angle( Vector3 axis, float angle )
#		q_Quat.set_euler( Vector3 euler )
#
#		q_Quat.slerp( Quat b, float t )
#		q_Quat.slerpni( Quat b, float t )
#
#		q_Quat.xform( Vector3 v )
#
#		if Autoload.WRONG_BUGS:
#			pass

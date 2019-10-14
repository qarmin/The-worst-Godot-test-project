extends Node2D

var q_Quat : Quat = Autoload.get_quat()
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
			
		
		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Quat = Quat(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
#			if randi() % 2 == 1:
#				q_Quat = Quat(Autoload.get_vector3())
			if randi() % 2 == 1:
				q_Quat = Autoload.get_quat()
			if randi() % 2 == 1:
				q_Quat = Quat(Autoload.get_basis())
	
		if randi() % 2 == 1:
			qq += str(q_Quat.cubic_slerp( Autoload.get_quat(), Autoload.get_quat(), Autoload.get_quat(), Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Quat.dot( Autoload.get_quat()))
		if randi() % 2 == 1:
			qq += str(q_Quat.get_euler())
		if randi() % 2 == 1:
			qq += str(q_Quat.inverse())
		if randi() % 2 == 1:
			qq += str(q_Quat.is_normalized())
	
		if randi() % 2 == 1:
			qq += str(q_Quat.length())
		if randi() % 2 == 1:
			qq += str(q_Quat.length_squared())
	
		if randi() % 2 == 1:
			qq += str(q_Quat.normalized())
	
		if randi() % 2 == 1:
			q_Quat.set_axis_angle( Autoload.get_vector3(), Autoload.get_float())
		if randi() % 2 == 1:
			q_Quat.set_euler( Autoload.get_vector3() )
	
		if randi() % 2 == 1:
			qq += str(q_Quat.slerp( Autoload.get_quat(), Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Quat.slerpni(Autoload.get_quat(), Autoload.get_float()))
	
		if randi() % 2 == 1:
			qq += str(q_Quat.xform( Autoload.get_vector3()))

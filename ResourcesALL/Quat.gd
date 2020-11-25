extends Node2D

var q_Quat: Quat = Autoload.get_quat()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Quat, true)


func nodeFunction(q_Quat: Quat, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Quat = Quat(Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
#			if randi() % 2 == 1:
#				q_Quat = Quat(Autoload.get_vector3())
			if randi() % 2 == 1:
				q_Quat = Autoload.get_quat()
			if randi() % 2 == 1:
				q_Quat = Quat(Autoload.get_basis())

	if randi() % 2 == 1:
		q_Quat.cubic_slerp(Autoload.get_quat(), Autoload.get_quat(), Autoload.get_quat(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Quat.dot(Autoload.get_quat())
	if randi() % 2 == 1:
		q_Quat.get_euler()
	if randi() % 2 == 1:
		q_Quat.inverse()
	if randi() % 2 == 1:
		q_Quat.is_normalized()

	if randi() % 2 == 1:
		q_Quat.length()
	if randi() % 2 == 1:
		q_Quat.length_squared()

	if randi() % 2 == 1:
		q_Quat.normalized()

#	if randi() % 2 == 1:
#		q_Quat.set_axis_angle(Autoload.get_vector3(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Quat.set_euler(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Quat.slerp(Autoload.get_quat(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Quat.slerpni(Autoload.get_quat(), Autoload.get_float())

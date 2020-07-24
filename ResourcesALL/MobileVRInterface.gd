extends Node2D

var q_MobileVRInterface: MobileVRInterface = MobileVRInterface.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_MobileVRInterface, true)


func nodeFunction(q_MobileVRInterface: MobileVRInterface, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_MobileVRInterface = MobileVRInterface.new()
	if randi() % 2 == 1:
		AutoResourcesARVRInterface.nodeFunction(q_MobileVRInterface)

	if randi() % 2 == 1:
		q_MobileVRInterface.set_eye_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_MobileVRInterface.set_iod(Autoload.get_float())
	if randi() % 2 == 1:
		q_MobileVRInterface.set_display_width(Autoload.get_float())
	if randi() % 2 == 1:
		q_MobileVRInterface.set_display_to_lens(Autoload.get_float())
	if randi() % 2 == 1:
		q_MobileVRInterface.set_oversample(Autoload.get_float())
	if randi() % 2 == 1:
		q_MobileVRInterface.set_k1(Autoload.get_float())
	if randi() % 2 == 1:
		q_MobileVRInterface.set_k2(Autoload.get_float())

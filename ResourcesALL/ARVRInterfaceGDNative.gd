extends Node2D

var q_ARVRInterfaceGDNative : ARVRInterfaceGDNative = ARVRInterfaceGDNative.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ARVRInterfaceGDNative,true)

func nodeFunction(q_ARVRInterfaceGDNative : ARVRInterfaceGDNative, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ARVRInterfaceGDNative = ARVRInterfaceGDNative.new()
	if randi() % 2 == 1:
		AutoResourcesARVRInterface.nodeFunction(q_ARVRInterfaceGDNative)



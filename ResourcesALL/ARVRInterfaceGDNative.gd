extends Node2D

var q_XRInterfaceGDNative: XRInterfaceGDNative = XRInterfaceGDNative.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_XRInterfaceGDNative, true)


func nodeFunction(q_XRInterfaceGDNative: XRInterfaceGDNative, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_XRInterfaceGDNative = XRInterfaceGDNative.new()
	if randi() % 2 == 1:
		AutoResourcesARVRInterface.nodeFunction(q_XRInterfaceGDNative)

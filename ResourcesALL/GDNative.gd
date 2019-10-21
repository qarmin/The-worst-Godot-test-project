extends Node2D

var q_GDNative : GDNative = GDNative.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_GDNative,true)

func nodeFunction(q_GDNative : GDNative, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_GDNative = GDNative.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_GDNative)

	if randi() % 2 == 1:
		q_GDNative.set_library(Autoload.loadA("GDNativeLibrary.tres"))

	if randi() % 2 == 1:
		q_GDNative.call_native( Autoload.get_string(), Autoload.get_string(), [Autoload.get_string(),Autoload.get_string()] )
	if randi() % 2 == 1:
		q_GDNative.initialize()
	if randi() % 2 == 1:
		q_GDNative.terminate()

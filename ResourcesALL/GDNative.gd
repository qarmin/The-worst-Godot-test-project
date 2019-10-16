extends Node2D

var q_GDNative : GDNative = GDNative.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_GDNative = GDNative.new()

		if randi() % 2 == 1:
			q_GDNative.set_library(Autoload.loadA("GDNativeLibrary.tres"))

		if randi() % 2 == 1:
			q_GDNative.call_native( Autoload.get_string(), Autoload.get_string(), [Autoload.get_string(),Autoload.get_string()] )
		if randi() % 2 == 1:
			Autoload.qq = str(q_GDNative.initialize())
		if randi() % 2 == 1:
			Autoload.qq = str(q_GDNative.terminate())

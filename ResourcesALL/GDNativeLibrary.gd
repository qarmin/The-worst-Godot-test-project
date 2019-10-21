extends Node2D

var q_GDNativeLibrary : GDNativeLibrary = GDNativeLibrary.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_GDNativeLibrary = GDNativeLibrary.new()

		if randi() % 2 == 1:
			q_GDNativeLibrary.set_config_file(ConfigFile.new())
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_load_once(Autoload.get_bool())
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_singleton(Autoload.get_bool())
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_symbol_prefix(Autoload.get_string())
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_reloadable(Autoload.get_bool())

		if randi() % 2 == 1:
			q_GDNativeLibrary.get_current_dependencies())
		if randi() % 2 == 1:
			q_GDNativeLibrary.get_current_library_path())

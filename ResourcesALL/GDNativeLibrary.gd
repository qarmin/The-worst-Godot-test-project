extends Node2D

var q_GDNativeLibrary: GDNativeLibrary = GDNativeLibrary.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_GDNativeLibrary, true)


func nodeFunction(q_GDNativeLibrary: GDNativeLibrary, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_GDNativeLibrary = GDNativeLibrary.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_GDNativeLibrary)

	### START TEMP

	var temp_ConfigFile: ConfigFile = ConfigFile.new()
	AutoResourcesConfigFile.nodeFunction(temp_ConfigFile)

	### END TEMP

	if randi() % 2 == 1:
		q_GDNativeLibrary.set_config_file(temp_ConfigFile)
	if randi() % 2 == 1:
		q_GDNativeLibrary.set_load_once(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GDNativeLibrary.set_singleton(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GDNativeLibrary.set_symbol_prefix(Autoload.get_string())
	if randi() % 2 == 1:
		q_GDNativeLibrary.set_reloadable(Autoload.get_bool())

	if randi() % 2 == 1:
		q_GDNativeLibrary.get_current_dependencies()
	if randi() % 2 == 1:
		q_GDNativeLibrary.get_current_library_path()

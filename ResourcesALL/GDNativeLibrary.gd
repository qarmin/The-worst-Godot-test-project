extends Node2D

var q_GDNativeLibrary : GDNativeLibrary = GDNativeLibrary.new()
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
			q_GDNativeLibrary = GDNativeLibrary.new()
			
		
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_config_file(ConfigFile.new())
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_load_once(bool(randi()%2))
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_singleton(bool(randi()%2))
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_symbol_prefix("Prefixus")
		if randi() % 2 == 1:
			q_GDNativeLibrary.set_reloadable(bool(randi()%2))
			
		if randi() % 2 == 1:
			qq += str(q_GDNativeLibrary.get_current_dependencies())
		if randi() % 2 == 1:
			qq += str(q_GDNativeLibrary.get_current_library_path())

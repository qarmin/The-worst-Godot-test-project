extends RemoteTransform

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_remote_node(Autoload.get_string())
		if randi() % 2 == 1:
			set_use_global_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			set_update_position(Autoload.get_bool())
		if randi() % 2 == 1:
			set_update_rotation(Autoload.get_bool())
		if randi() % 2 == 1:
			set_update_scale(Autoload.get_bool())

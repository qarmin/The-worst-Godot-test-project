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
		
		set_remote_node(".")
		set_use_global_coordinates(bool(randi()%2))
		set_update_position(bool(randi()%2))
		set_update_rotation(bool(randi()%2))
		set_update_scale(bool(randi()%2))
		
		
		if Autoload.WRONG_BUGS:
			set_remote_node(".asgfaw")
			set_use_global_coordinates(bool(randi()%2))
			set_update_position(bool(randi()%2))
			set_update_rotation(bool(randi()%2))
			set_update_scale(bool(randi()%2))

	else: #RANDI
		if randi() % 2 == 1:
			set_remote_node(".asgfaw")
		if randi() % 2 == 1:
			set_use_global_coordinates(bool(randi()%2))
		if randi() % 2 == 1:
			set_update_position(bool(randi()%2))
		if randi() % 2 == 1:
			set_update_rotation(bool(randi()%2))
		if randi() % 2 == 1:
			set_update_scale(bool(randi()%2))

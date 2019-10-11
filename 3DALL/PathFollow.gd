extends PathFollow

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
			set_offset(Autoload.get_randf())
		if randi() % 2 == 1:
			set_unit_offset(Autoload.get_randf())
		if randi() % 2 == 1:
			set_h_offset(Autoload.get_randf())
		if randi() % 2 == 1:
			set_v_offset(Autoload.get_randf())
		if randi() % 2 == 1:
			set_rotation_mode(Autoload.get_randi()) # ENUM RotationMode
		if randi() % 2 == 1:
			set_cubic_interpolation(bool(randi()%2))
		if randi() % 2 == 1:
			set_loop(bool(randi()%2))

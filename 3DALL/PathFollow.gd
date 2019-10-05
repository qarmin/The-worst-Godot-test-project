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
		
		set_offset(randf() * 50)
		set_unit_offset(randf() * 50)
		set_h_offset(randf() * 50)
		set_v_offset(randf() * 50)
		set_rotation_mode(randi() % 5) # ENUM RotationMode
		set_cubic_interpolation(bool(randi()%2))
		set_loop(bool(randi()%2))

		if Autoload.WRONG_BUGS:
			set_offset(randf() * 1000 - 500)
			set_unit_offset(randf() * 1000 - 500)
			set_h_offset(randf() * 1000 - 500)
			set_v_offset(randf() * 1000 - 500)
			set_rotation_mode(randi() % 1000 - 500) # ENUM RotationMode
			set_cubic_interpolation(bool(randi()%2))
			set_loop(bool(randi()%2))

	else: #RANDI
		if randi() % 2 == 1:
			set_offset(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_unit_offset(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_h_offset(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_v_offset(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_rotation_mode(randi() % 1000 - 500) # ENUM RotationMode
		if randi() % 2 == 1:
			set_cubic_interpolation(bool(randi()%2))
		if randi() % 2 == 1:
			set_loop(bool(randi()%2))

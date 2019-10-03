extends PathFollow2D

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
		
		set_offset(randf() * 50)
		set_unit_offset(randf() * 50)
		set_h_offset(randf() * 50)
		set_v_offset(randf() * 50)
		set_rotate(bool(randi()%2))
		set_cubic_interpolation(bool(randi()%2))
		set_loop(bool(randi()%2))
		set_lookahead(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			set_offset(randf() * 1000 - 500)
			set_unit_offset(randf() * 1000 - 500)
			set_h_offset(randf() * 1000 - 500)
			set_v_offset(randf() * 1000 - 500)
			set_rotate(bool(randi()%2))
			set_cubic_interpolation(bool(randi()%2))
			set_loop(bool(randi()%2))
			set_lookahead(randf() * 1000 - 500)

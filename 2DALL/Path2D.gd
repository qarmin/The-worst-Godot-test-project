extends Path2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_curve(load("res://Curve2D1.tres"))
		$PathFollow2D.set_offset(randf() * 50)
		$PathFollow2D.set_unit_offset(randf() * 50)
		$PathFollow2D.set_h_offset(randf() * 50)
		$PathFollow2D.set_v_offset(randf() * 50)
		$PathFollow2D.set_rotate(bool(randi()%2))
		$PathFollow2D.set_cubic_interpolation(bool(randi()%2))
		$PathFollow2D.set_loop(bool(randi()%2))
		$PathFollow2D.set_lookahead(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			set_curve(load("res://Curve2D1.tres"))
			$PathFollow2D.set_offset(randf() * 1000 - 500)
			$PathFollow2D.set_unit_offset(randf() * 1000 - 500)
			$PathFollow2D.set_h_offset(randf() * 1000 - 500)
			$PathFollow2D.set_v_offset(randf() * 1000 - 500)
			$PathFollow2D.set_rotate(bool(randi()%2))
			$PathFollow2D.set_cubic_interpolation(bool(randi()%2))
			$PathFollow2D.set_loop(bool(randi()%2))
			$PathFollow2D.set_lookahead(randf() * 1000 - 500)

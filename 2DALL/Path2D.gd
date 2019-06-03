extends Path2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	if counter <= 0:
		set_curve(load("res://Curve2D1.tres"))
		$PathFollow2D.set_offset(randf() * 50)
		$PathFollow2D.set_unit_offset(randf() * 50)
		$PathFollow2D.set_h_offset(randf() * 50)
		$PathFollow2D.set_v_offset(randf() * 50)
		$PathFollow2D.set_rotate(bool(randi()%2))
		$PathFollow2D.set_cubic_interpolation(bool(randi()%2))
		$PathFollow2D.set_loop(bool(randi()%2))
		$PathFollow2D.set_lookahead(randf() * 50)
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
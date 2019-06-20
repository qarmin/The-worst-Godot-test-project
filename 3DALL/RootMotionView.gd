extends RootMotionView

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_animation_path(".")
		set_color(Color(randf(),randf(),randf(),randf()))
		set_cell_size(randf() * 50)
		set_radius(randf() * 50)
		set_zero_y(bool(randi()%2))
		
		
		if Autoload.WRONG_BUGS:
			set_animation_path("fawfasfaw.")
			set_color(Color(randf(),randf(),randf(),randf()))
			set_cell_size(randf() * 1000 - 500)
			set_radius(randf() * 1000 - 500)
			set_zero_y(bool(randi()%2))

extends RootMotionView

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
			set_animation_path(Autoload.get_string())
		if randi() % 2 == 1:
			set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_cell_size(Autoload.get_randf())
		if randi() % 2 == 1:
			set_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			set_zero_y(bool(randi()%2))

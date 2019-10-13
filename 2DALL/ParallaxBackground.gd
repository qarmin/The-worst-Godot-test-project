extends ParallaxBackground

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
			set_scroll_offset(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_scroll_base_offset(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_scroll_base_scale(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_limit_begin(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_limit_end(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_ignore_camera_zoom(Autoload.get_bool())

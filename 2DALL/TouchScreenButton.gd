extends TouchScreenButton

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
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_texture_pressed(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_bitmask(Autoload.loadA("Bitmap.tres"))
		if randi() % 2 == 1:
			set_shape(Autoload.loadA("CircleShape2D.tres"))
		if randi() % 2 == 1:
			set_shape_centered(Autoload.get_bool())
		if randi() % 2 == 1:
			set_shape_visible(Autoload.get_bool())
		if randi() % 2 == 1:
			set_passby_press(Autoload.get_bool())
		if randi() % 2 == 1:
			set_action(str(Autoload.get_int()))
		if randi() % 2 == 1:
			set_visibility_mode(Autoload.get_int())

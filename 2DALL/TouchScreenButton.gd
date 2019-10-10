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
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_texture_pressed(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_bitmask(Autoload.loadA("res://RES/Bitmap.tres"))
		if randi() % 2 == 1:
			set_shape(Autoload.loadA("res://RES/CircleShape2D.tres"))
		if randi() % 2 == 1:
			set_shape_centered(bool(randi()%2))
		if randi() % 2 == 1:
			set_shape_visible(bool(randi()%2))
		if randi() % 2 == 1:
			set_passby_press(bool(randi()%2))
		if randi() % 2 == 1:
			set_action(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_visibility_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)

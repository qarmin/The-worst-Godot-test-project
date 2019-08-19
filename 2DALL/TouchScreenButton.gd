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
		
		set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_texture_pressed(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_bitmask(load("res://RES/Bitmap.tres"))
		set_shape(load("res://RES/CircleShape2D.tres"))
		set_shape_centered(bool(randi()%2))
		set_shape_visible(bool(randi()%2))
		set_passby_press(bool(randi()%2))
		set_action(str(randi()%2412))
		set_visibility_mode(randi()%2)
		
		qq += str(is_pressed())
		
		if Autoload.WRONG_BUGS:
			counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
			
			set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_texture_pressed(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_bitmask(load("res://RES/Bitmap.tres"))
			set_shape(load("res://RES/CircleShape2D.tres"))
			set_shape_centered(bool(randi()%2))
			set_shape_visible(bool(randi()%2))
			set_passby_press(bool(randi()%2))
			set_action(str(randi() % 1000 - 500))
			set_visibility_mode(randi() % 1000 - 500)
			
			qq += str(is_pressed())

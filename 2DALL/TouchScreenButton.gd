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
		if !Autoload.RANDI:
			
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			set_texture_pressed(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			#set_bitmask(Autoload.loadA("res://RES/Bitmap.tres",false))
			set_shape(Autoload.loadA("res://RES/CircleShape2D.tres",false))
			set_shape_centered(bool(randi()%2))
			set_shape_visible(bool(randi()%2))
			set_passby_press(bool(randi()%2))
			set_action(str(randi()%2412))
			set_visibility_mode(randi()%2)
			
			qq += str(is_pressed())
			
			if Autoload.WRONG_BUGS:
				
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_texture_pressed(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_bitmask(Autoload.loadA("res://RES/Bitmap.tres"))
				set_shape(Autoload.loadA("res://RES/CircleShape2D.tres"))
				set_shape_centered(bool(randi()%2))
				set_shape_visible(bool(randi()%2))
				set_passby_press(bool(randi()%2))
				set_action(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				set_visibility_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
				qq += str(is_pressed())
		else: #RANDI
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

extends TextureRect

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
		set_expand(bool(randi()%2))
		set_stretch_mode(randi()%8)
		set_flip_h(bool(randi()%2))
		set_flip_v(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			set_texture(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
			set_expand(bool(randi()%2))
			set_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_flip_h(bool(randi()%2))
			set_flip_v(bool(randi()%2))
		
	else: #RANDI
		if randi() % 2 == 1:
			set_texture(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
		if randi() % 2 == 1:
			set_expand(bool(randi()%2))
		if randi() % 2 == 1:
			set_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_flip_h(bool(randi()%2))
		if randi() % 2 == 1:
			set_flip_v(bool(randi()%2))

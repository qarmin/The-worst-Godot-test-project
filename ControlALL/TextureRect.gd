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
		
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			set_stretch_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_flip_h(Autoload.get_bool())
		if randi() % 2 == 1:
			set_flip_v(Autoload.get_bool())

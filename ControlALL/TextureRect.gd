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
			set_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_expand(bool(randi()%2))
		if randi() % 2 == 1:
			set_stretch_mode(Autoload.get_randi())
		if randi() % 2 == 1:
			set_flip_h(bool(randi()%2))
		if randi() % 2 == 1:
			set_flip_v(bool(randi()%2))

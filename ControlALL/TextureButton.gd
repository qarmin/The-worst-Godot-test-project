extends TextureButton

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
			set_normal_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_pressed_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_hover_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_disabled_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_focused_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_click_mask(BitMap.new())
		if randi() % 2 == 1:
			set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			set_stretch_mode(Autoload.get_int())

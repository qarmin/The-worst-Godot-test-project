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
		
		set_normal_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_pressed_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_hover_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_disabled_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_focused_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		#set_click_mask(BitMap.new())
		set_expand(bool(randi()%2))
		set_stretch_mode(randi()%7)
		
		if Autoload.WRONG_BUGS:
			set_normal_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_pressed_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_hover_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_disabled_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_focused_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_click_mask(BitMap.new())
			set_expand(bool(randi()%2))
			set_stretch_mode(randi() % 1000 - 500)

	else: #RANDI
		if randi() % 2 == 1:
			set_normal_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_pressed_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_hover_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_disabled_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_focused_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_click_mask(BitMap.new())
		if randi() % 2 == 1:
			set_expand(bool(randi()%2))
		if randi() % 2 == 1:
			set_stretch_mode(randi() % 1000 - 500)

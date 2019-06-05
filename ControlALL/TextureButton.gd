extends TextureButton

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		
		set_normal_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_pressed_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_hover_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_disabled_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_focused_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_click_mask(BitMap.new())
		set_expand(bool(randi()%2))
		set_stretch_mode(randi()%7)
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
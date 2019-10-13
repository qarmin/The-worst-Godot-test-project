extends NinePatchRect

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
			set_draw_center(Autoload.get_bool())
		if randi() % 2 == 1:
			set_region_rect(Rect2(Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float())))
		if randi() % 2 == 1:
			set("patch_margin_left", Autoload.get_int())
		if randi() % 2 == 1:
			set("patch_margin_top", Autoload.get_int())
		if randi() % 2 == 1:
			set("patch_margin_right", Autoload.get_int())
		if randi() % 2 == 1:
			set("patch_margin_bottom", Autoload.get_int())
		if randi() % 2 == 1:
			set_h_axis_stretch_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_v_axis_stretch_mode(Autoload.get_int())

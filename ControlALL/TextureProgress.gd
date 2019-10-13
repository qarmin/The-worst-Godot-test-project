extends TextureProgress

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
			set_under_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_over_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_progress_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_fill_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_tint_under(Autoload.get_color())
		if randi() % 2 == 1:
			set_tint_over(Autoload.get_color())
		if randi() % 2 == 1:
			set_tint_progress(Autoload.get_color())
		if randi() % 2 == 1:
			set_radial_initial_angle(Autoload.get_float())
		if randi() % 2 == 1:
			set_fill_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			set_radial_center_offset(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_nine_patch_stretch(Autoload.get_bool())
		if randi() % 2 == 1:
			set("stretch_margin_left",Autoload.get_int())
		if randi() % 2 == 1:
			set("stretch_margin_top",Autoload.get_int())
		if randi() % 2 == 1:
			set("stretch_margin_right",Autoload.get_int())
		if randi() % 2 == 1:
			set("stretch_margin_bottom",Autoload.get_int())

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
			set_under_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_over_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_progress_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_fill_mode(Autoload.get_randi())
		if randi() % 2 == 1:
			set_tint_under(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_tint_over(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_tint_progress(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_radial_initial_angle(Autoload.get_randf())
		if randi() % 2 == 1:
			set_fill_degrees(Autoload.get_randf())
		if randi() % 2 == 1:
			set_radial_center_offset(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_nine_patch_stretch(bool(randi()%2))
		if randi() % 2 == 1:
			set("stretch_margin_left",Autoload.get_randi())
		if randi() % 2 == 1:
			set("stretch_margin_top",Autoload.get_randi())
		if randi() % 2 == 1:
			set("stretch_margin_right",Autoload.get_randi())
		if randi() % 2 == 1:
			set("stretch_margin_bottom",Autoload.get_randi())

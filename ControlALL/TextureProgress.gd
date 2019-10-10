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
			set_under_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_over_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_progress_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_fill_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_tint_under(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_tint_over(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_tint_progress(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_radial_initial_angle(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_fill_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_radial_center_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_nine_patch_stretch(bool(randi()%2))
		if randi() % 2 == 1:
			set("stretch_margin_left",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("stretch_margin_top",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("stretch_margin_right",randi() % Autoload.RANGE - Autoload.RANGE / 20)
		if randi() % 2 == 1:
			set("stretch_margin_bottom",randi() % Autoload.RANGE - Autoload.RANGE / 2)

extends TextureProgress

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
		set_under_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_over_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_progress_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_fill_mode(randi()%9)
		set_tint_under(Color(randf(),randf(),randf(),randf()))
		set_tint_over(Color(randf(),randf(),randf(),randf()))
		set_tint_progress(Color(randf(),randf(),randf(),randf()))
		set_radial_initial_angle(randf() * 50)
		set_fill_degrees(randf() * 50)
		set_radial_center_offset(Vector2(randf() * 50,randf() * 50))
		set_nine_patch_stretch(bool(randi()%2))
		set("stretch_margin_left",randi()%50)
		set("stretch_margin_top",randi()%50)
		set("stretch_margin_right",randi()%50)
		set("stretch_margin_bottom",randi()%50)
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
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
		
		set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_draw_center(bool(randi()%2))
		set_region_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set("patch_margin_left", randi()%20)
		set("patch_margin_top", randi()%20)
		set("patch_margin_right", randi()%20)
		set("patch_margin_bottom", randi()%20)
		set_h_axis_stretch_mode(randi()%3)
		set_v_axis_stretch_mode(randi()%3)
		
		if Autoload.WRONG_BUGS:
			set_texture(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
			set_draw_center(bool(randi()%2))
			set_region_rect(Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))
			set("patch_margin_left", randi() % 1000 - 500)
			set("patch_margin_top", randi() % 1000 - 500)
			set("patch_margin_right", randi() % 1000 - 500)
			set("patch_margin_bottom", randi() % 1000 - 500)
			set_h_axis_stretch_mode(randi() % 1000 - 500)
			set_v_axis_stretch_mode(randi() % 1000 - 500)

	else: #RANDI
		if randi() % 2 == 1:
			set_texture(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
		if randi() % 2 == 1:
			set_draw_center(bool(randi()%2))
		if randi() % 2 == 1:
			set_region_rect(Rect2(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))
		if randi() % 2 == 1:
			set("patch_margin_left", randi() % 1000 - 500)
		if randi() % 2 == 1:
			set("patch_margin_top", randi() % 1000 - 500)
		if randi() % 2 == 1:
			set("patch_margin_right", randi() % 1000 - 500)
		if randi() % 2 == 1:
			set("patch_margin_bottom", randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_h_axis_stretch_mode(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_v_axis_stretch_mode(randi() % 1000 - 500)

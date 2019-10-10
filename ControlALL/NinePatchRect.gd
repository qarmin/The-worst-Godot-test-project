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
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_draw_center(bool(randi()%2))
		if randi() % 2 == 1:
			set_region_rect(Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			set("patch_margin_left", randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("patch_margin_top", randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("patch_margin_right", randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("patch_margin_bottom", randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_h_axis_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_v_axis_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)

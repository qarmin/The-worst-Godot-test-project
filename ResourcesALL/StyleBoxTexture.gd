extends Node2D

var q_StyleBoxTexture : StyleBoxTexture = StyleBoxTexture.new()
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
			q_StyleBoxTexture = StyleBoxTexture.new()
			
		
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_region_rect(Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_margin_size(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_expand_margin_size(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_h_axis_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #AxisStretchMode
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_v_axis_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #AxisStretchMode
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_modulate(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_draw_center(bool(randi()%2))
			
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_expand_margin_all( randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_StyleBoxTexture.set_expand_margin_individual( randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)

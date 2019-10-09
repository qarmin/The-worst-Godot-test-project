extends Node2D

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
			
		var q_StyleBoxTexture : StyleBoxTexture = StyleBoxTexture.new()
		if !Autoload.RANDI:
			
			q_StyleBoxTexture.set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			q_StyleBoxTexture.set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			q_StyleBoxTexture.set_region_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
			q_StyleBoxTexture.set_margin_size(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * 50)
			q_StyleBoxTexture.set_expand_margin_size(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * 50)
			q_StyleBoxTexture.set_h_axis_stretch_mode(randi() % 3) #AxisStretchMode
			q_StyleBoxTexture.set_v_axis_stretch_mode(randi() % 3) #AxisStretchMode
			q_StyleBoxTexture.set_modulate(Color(randf(),randf(),randf(),randf()))
			q_StyleBoxTexture.set_draw_center(bool(randi()%2))
			
			q_StyleBoxTexture.set_expand_margin_all( randf() * 50)
			q_StyleBoxTexture.set_expand_margin_individual( randf() * 50,randf() * 50,randf() * 50,randf() * 50)
			
			if Autoload.WRONG_BUGS:
				q_StyleBoxTexture.set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_StyleBoxTexture.set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_StyleBoxTexture.set_region_rect(Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_StyleBoxTexture.set_margin_size(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_StyleBoxTexture.set_expand_margin_size(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_StyleBoxTexture.set_h_axis_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #AxisStretchMode
				q_StyleBoxTexture.set_v_axis_stretch_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #AxisStretchMode
				q_StyleBoxTexture.set_modulate(Color(randf(),randf(),randf(),randf()))
				q_StyleBoxTexture.set_draw_center(bool(randi()%2))
				
				q_StyleBoxTexture.set_expand_margin_all( randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_StyleBoxTexture.set_expand_margin_individual( randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
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

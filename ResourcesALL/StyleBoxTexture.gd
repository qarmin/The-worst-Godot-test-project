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
		
		q_StyleBoxTexture.set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		q_StyleBoxTexture.set_normal_map(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		q_StyleBoxTexture.set_region_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		for i in range(4):
			q_StyleBoxTexture.set_margin_size(i,randf() * 50)
			q_StyleBoxTexture.set_expand_margin_size(i,randf() * 50)
		q_StyleBoxTexture.set_h_axis_stretch_mode(randi() % 3) #AxisStretchMode
		q_StyleBoxTexture.set_v_axis_stretch_mode(randi() % 3) #AxisStretchMode
		q_StyleBoxTexture.set_modulate(Color(randf(),randf(),randf(),randf()))
		q_StyleBoxTexture.set_draw_center(bool(randi()%2))
		
		q_StyleBoxTexture.set_expand_margin_all( randf() * 50)
		q_StyleBoxTexture.set_expand_margin_individual( randf() * 50,randf() * 50,randf() * 50,randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_StyleBoxTexture.set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			q_StyleBoxTexture.set_normal_map(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			q_StyleBoxTexture.set_region_rect(Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			for i in range(4):
				q_StyleBoxTexture.set_margin_size(i,randf() * 1000 - 500)
				q_StyleBoxTexture.set_expand_margin_size(i,randf() * 1000 - 500)
			q_StyleBoxTexture.set_h_axis_stretch_mode(randi() % 1000 - 500) #AxisStretchMode
			q_StyleBoxTexture.set_v_axis_stretch_mode(randi() % 1000 - 500) #AxisStretchMode
			q_StyleBoxTexture.set_modulate(Color(randf(),randf(),randf(),randf()))
			q_StyleBoxTexture.set_draw_center(bool(randi()%2))
			
			q_StyleBoxTexture.set_expand_margin_all( randf() * 1000 - 500)
			q_StyleBoxTexture.set_expand_margin_individual( randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)

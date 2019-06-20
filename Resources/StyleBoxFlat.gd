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
		
		var q_StyleBoxFlat : StyleBoxFlat = StyleBoxFlat.new()
		
		q_StyleBoxFlat.set_bg_color(Color(randf(),randf(),randf(),randf()))
		q_StyleBoxFlat.set_draw_center(bool(randi()%2))
		for i in range(4):
			q_StyleBoxFlat.set_border_width(i,randi()%50)
		q_StyleBoxFlat.set_border_color(Color(randf(),randf(),randf(),randf()))
		q_StyleBoxFlat.set_border_blend(bool(randi()%2))
		for i in range(4):
			q_StyleBoxFlat.set_corner_radius(i,randi()%50)
		q_StyleBoxFlat.set_corner_detail(randi()%50)
		for i in range(4):
			q_StyleBoxFlat.set_expand_margin(i,randi()%50)
		q_StyleBoxFlat.set_shadow_color(Color(randf(),randf(),randf(),randf()))
		q_StyleBoxFlat.set_shadow_size(randi()%50)
		q_StyleBoxFlat.set_shadow_offset(Vector2(randf() * 50,randf() * 50))
		q_StyleBoxFlat.set_anti_aliased(bool(randi()%2))
		q_StyleBoxFlat.set_aa_size(randi()%50)
		
		qq += str(q_StyleBoxFlat.get_border_width_min())
		q_StyleBoxFlat.set_border_width_all( randi()%50)
		q_StyleBoxFlat.set_corner_radius_all( randi()%50 )
		q_StyleBoxFlat.set_corner_radius_individual( randi()%50,randi()%50,randi()%50, randi()%50)
		q_StyleBoxFlat.set_expand_margin_all( randf() * 50)
		q_StyleBoxFlat.set_expand_margin_individual( randf() * 50,randf() * 50, randf() * 50, randf() * 50 )
		
		if Autoload.WRONG_BUGS:
			q_StyleBoxFlat.set_bg_color(Color(randf(),randf(),randf(),randf()))
			q_StyleBoxFlat.set_draw_center(bool(randi()%2))
			for i in range(4):
				q_StyleBoxFlat.set_border_width(i,randi() % 1000 - 500)
			q_StyleBoxFlat.set_border_color(Color(randf(),randf(),randf(),randf()))
			q_StyleBoxFlat.set_border_blend(bool(randi()%2))
			for i in range(4):
				q_StyleBoxFlat.set_corner_radius(i,randi() % 1000 - 500)
			q_StyleBoxFlat.set_corner_detail(randi() % 1000 - 500)
			for i in range(4):
				q_StyleBoxFlat.set_expand_margin(i,randi() % 1000 - 500)
			q_StyleBoxFlat.set_shadow_color(Color(randf(),randf(),randf(),randf()))
			q_StyleBoxFlat.set_shadow_size(randi() % 1000 - 500)
			q_StyleBoxFlat.set_shadow_offset(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_StyleBoxFlat.set_anti_aliased(bool(randi()%2))
			q_StyleBoxFlat.set_aa_size(randi() % 1000 - 500)
			
			qq += str(q_StyleBoxFlat.get_border_width_min())
			q_StyleBoxFlat.set_border_width_all( randi() % 1000 - 500)
			q_StyleBoxFlat.set_corner_radius_all( randi() % 1000 - 500 )
			q_StyleBoxFlat.set_corner_radius_individual( randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500, randi() % 1000 - 500)
			q_StyleBoxFlat.set_expand_margin_all( randf() * 1000 - 500)
			q_StyleBoxFlat.set_expand_margin_individual( randf() * 1000 - 500,randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500 )

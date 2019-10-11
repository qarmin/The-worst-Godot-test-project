extends Node2D

var q_StyleBoxFlat : StyleBoxFlat = StyleBoxFlat.new()
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
			q_StyleBoxFlat = StyleBoxFlat.new()
		#BUGGG
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_bg_color(Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_draw_center(bool(randi()%2))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_width(Autoload.get_randi(),Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_color(Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_blend(bool(randi()%2))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_radius(Autoload.get_randi(),Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_detail(Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_expand_margin(Autoload.get_randi(),Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_shadow_color(Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_shadow_size(Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_shadow_offset(Vector2(Autoload.get_randf(),Autoload.get_randf()))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_anti_aliased(bool(randi()%2))
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_aa_size(Autoload.get_randi())
#
#		if randi() % 2 == 1:
#			qq += str(q_StyleBoxFlat.get_border_width_min())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_width_all( Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_radius_all( Autoload.get_randi() )
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_radius_individual( Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi(), Autoload.get_randi())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_expand_margin_all( Autoload.get_randf())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_expand_margin_individual( Autoload.get_randf(),Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf() )

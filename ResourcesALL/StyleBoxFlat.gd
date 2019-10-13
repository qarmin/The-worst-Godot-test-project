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
#			q_StyleBoxFlat.set_bg_color(Autoload.get_color())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_draw_center(Autoload.get_bool())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_width(Autoload.get_int(),Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_color(Autoload.get_color())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_blend(Autoload.get_bool())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_radius(Autoload.get_int(),Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_detail(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_expand_margin(Autoload.get_int(),Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_shadow_color(Autoload.get_color())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_shadow_size(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_shadow_offset(Autoload.get_vector2())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_anti_aliased(Autoload.get_bool())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_aa_size(Autoload.get_int())
#
#		if randi() % 2 == 1:
#			qq += str(q_StyleBoxFlat.get_border_width_min())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_border_width_all( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_radius_all( Autoload.get_int() )
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_corner_radius_individual( Autoload.get_int(),Autoload.get_int(),Autoload.get_int(), Autoload.get_int())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_expand_margin_all( Autoload.get_float())
#		if randi() % 2 == 1:
#			q_StyleBoxFlat.set_expand_margin_individual( Autoload.get_float(),Autoload.get_float(), Autoload.get_float(), Autoload.get_float() )

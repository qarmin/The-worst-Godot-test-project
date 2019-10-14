extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_StyleBox : StyleBox = StyleBox.new()
#
#		for i in range(4):
#			q_StyleBox.set_default_margin( i,Autoload.get_float() )#MARGIN
#
#		q_StyleBox.draw( RID(), Autoload.get_rect2())
#
#		qq += str(q_StyleBox.get_center_size())
#		qq += str(q_StyleBox.get_current_item_drawn())
#		qq += str(q_StyleBox.get_margin( randi() % 4 ))#MARGIN
#		qq += str(q_StyleBox.get_minimum_size())
#		qq += str(q_StyleBox.get_offset())
#
#		qq += str(q_StyleBox.test_mask( Autoload.get_vector2(), Autoload.get_rect2()))
#

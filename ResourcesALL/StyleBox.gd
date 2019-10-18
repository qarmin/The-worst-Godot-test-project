extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_StyleBox : StyleBox = StyleBox.new()
#
#		for i in range(4):
#			q_StyleBox.set_default_margin( i,Autoload.get_float() )#MARGIN
#
#		q_StyleBox.draw( RID(), Autoload.get_rect2())
#
#		Autoload.qq = str(q_StyleBox.get_center_size())
#		Autoload.qq = str(q_StyleBox.get_current_item_drawn())
#		Autoload.qq = str(q_StyleBox.get_margin( Autoload.get_int() ))#MARGIN
#		Autoload.qq = str(q_StyleBox.get_minimum_size())
#		Autoload.qq = str(q_StyleBox.get_offset())
#
#		Autoload.qq = str(q_StyleBox.test_mask( Autoload.get_vector2(), Autoload.get_rect2()))
#

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
		if !Autoload.RANDI:
			pass
		
#		var q_StyleBox : StyleBox = StyleBox.new()
#
#		for i in range(4):
#			q_StyleBox.set_default_margin( i,randf() * 50 )#MARGIN
#
#		q_StyleBox.draw( RID(), Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#
#		qq += str(q_StyleBox.get_center_size())
#		qq += str(q_StyleBox.get_current_item_drawn())
#		qq += str(q_StyleBox.get_margin( randi() % 4 ))#MARGIN
#		qq += str(q_StyleBox.get_minimum_size())
#		qq += str(q_StyleBox.get_offset())
#
#		qq += str(q_StyleBox.test_mask( Vector2(randf() * 50,randf() * 50), Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))))
#
#		if Autoload.WRONG_BUGS:
#			pass

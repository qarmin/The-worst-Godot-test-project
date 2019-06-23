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
		
#		var q_Rect2 : Rect2
#
#		q_Rect2 = Rect2(
#		q_Rect2 = Rect2(
#
#		q_Rect2.abs()
#		q_Rect2.clip( Rect2 b )
#		q_Rect2.encloses( Rect2 b )
#		q_Rect2.expand( Vector2 to )
#		q_Rect2.get_area()
#
#		q_Rect2.grow( float by )
#		q_Rect2.grow_individual( float left, float top, float right, float bottom )
#		q_Rect2.grow_margin( int margin, float by )
#
#		q_Rect2.has_no_area()
#		q_Rect2.has_point( Vector2 point )
#
#		q_Rect2.intersects( Rect2 b )
#		q_Rect2.merge( Rect2 b )
#
#		if Autoload.WRONG_BUGS:
#			pass

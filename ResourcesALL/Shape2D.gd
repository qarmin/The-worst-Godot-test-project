extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_Shape2D : Shape2D = Shape2D.new()
#
#		if Autoload.WRONG_BUGS:
#			q_Shape2D.set_custom_solver_bias(Autoload.get_float())
#
#			qq += str(q_Shape2D.collide( Autoload.get_transform2d(), CircleShape2D.new(), Autoload.get_transform2d() ))
#			qq += str(q_Shape2D.collide_and_get_contacts( Autoload.get_transform2d(), CircleShape2D.new(), Autoload.get_transform2d() ))
#			qq += str(q_Shape2D.collide_with_motion( Autoload.get_transform2d(), Autoload.get_vector2(), CircleShape2D.new(), Autoload.get_transform2d(), Autoload.get_vector2()))
#			qq += str(q_Shape2D.collide_with_motion_and_get_contacts( Autoload.get_transform2d(),Autoload.get_vector2(), CircleShape2D.new(), Autoload.get_transform2d(), Autoload.get_vector2() ))

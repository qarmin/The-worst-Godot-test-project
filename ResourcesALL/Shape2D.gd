extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		if !Autoload.RANDI:
#			pass
#
#		var q_Shape2D : Shape2D = Shape2D.new()
#
#		q_Shape2D.set_custom_solver_bias(randf() * 50)
#
#		qq += str(q_Shape2D.collide( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)) ))
#		qq += str(q_Shape2D.collide_and_get_contacts( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)) ))
#		qq += str(q_Shape2D.collide_with_motion( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50)))
#		qq += str(q_Shape2D.collide_with_motion_and_get_contacts( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)),Vector2(randf() * 50,randf() * 50), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) ))
#
#
#		if Autoload.WRONG_BUGS:
#			q_Shape2D.set_custom_solver_bias(randf() * 50)
#
#			qq += str(q_Shape2D.collide( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)) ))
#			qq += str(q_Shape2D.collide_and_get_contacts( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)) ))
#			qq += str(q_Shape2D.collide_with_motion( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50)))
#			qq += str(q_Shape2D.collide_with_motion_and_get_contacts( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)),Vector2(randf() * 50,randf() * 50), CircleShape2D.new(), Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) ))

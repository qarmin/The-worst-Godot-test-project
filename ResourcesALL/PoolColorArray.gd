extends Node2D

var q_PoolColorArray : PoolColorArray = Autoload.get_poolcolorarray()
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
#
#
#		if randi() % 2 == 1:
#			q_PoolColorArray = Autoload.get_poolcolorarray()
#
#		if randi() % 2 == 1:
#			q_PoolColorArray.append(Autoload.get_color())
#		if randi() % 2 == 1:
#			q_PoolColorArray.append_array(Autoload.get_poolcolorarray())
#
#		if randi() % 2 == 1:
#			qq += str(q_PoolColorArray.insert( Autoload.get_int(), Autoload.get_color()) )
#		if randi() % 2 == 1:
#			q_PoolColorArray.invert()
#		if randi() % 2 == 1:
#			q_PoolColorArray.push_back( Autoload.get_color() )
#		if randi() % 2 == 1:
#			q_PoolColorArray.remove( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolColorArray.resize( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolColorArray.set(Autoload.get_int(), Autoload.get_color())
#		if randi() % 2 == 1:
#			qq += str(q_PoolColorArray.size())

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
		var q_Reference : Reference = Reference.new()
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			pass

#			qq += str(q_Reference.init_ref())
#			qq += str(q_Reference.reference())
#			qq += str(q_Reference.unreference())
#
#			if Autoload.WRONG_BUGS:
#
#				qq += str(q_Reference.init_ref())
#				qq += str(q_Reference.reference())
#				qq += str(q_Reference.unreference())
#
#		else: #RANDI
#			if randi() % 2 == 1:
#				qq += str(q_Reference.init_ref())
#			if randi() % 2 == 1:
#				qq += str(q_Reference.reference())
#			if randi() % 2 == 1:
#				qq += str(q_Reference.unreference())

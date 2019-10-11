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
#		if !Autoload.RANDI:
#			pass
#
#		var q_Script : Script = Script.new()
#
#		q_Script.set_source_code(Autoload.get_string())
#
#		qq += str(q_Script.can_instance())
#
#		qq += str(q_Script.get_base_script())
#		qq += str(q_Script.get_instance_base_type())
#
#		qq += str(q_Script.has_script_signal( Autoload.get_string() ))
#		qq += str(q_Script.has_source_code())
#
#		qq += str(q_Script.instance_has( self ))
#		qq += str(q_Script.is_tool())
#		qq += str(q_Script.reload( bool(randi()%2) ))
#
#		if Autoload.WRONG_BUGS:
#			pass

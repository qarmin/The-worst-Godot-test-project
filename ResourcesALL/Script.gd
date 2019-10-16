extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#

#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#		if !Autoload.RANDI:
#			pass
#
#		var q_Script : Script = Script.new()
#
#		q_Script.set_source_code(Autoload.get_string())
#
#		Autoload.qq = str(q_Script.can_instance())
#
#		Autoload.qq = str(q_Script.get_base_script())
#		Autoload.qq = str(q_Script.get_instance_base_type())
#
#		Autoload.qq = str(q_Script.has_script_signal( Autoload.get_string() ))
#		Autoload.qq = str(q_Script.has_source_code())
#
#		Autoload.qq = str(q_Script.instance_has( self ))
#		Autoload.qq = str(q_Script.is_tool())
#		Autoload.qq = str(q_Script.reload( Autoload.get_bool() ))
#
#		if Autoload.WRONG_BUGS:
#			pass

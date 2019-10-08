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
		
#		var q_EditorScript : EditorScript = EditorScript.new()
#
#		q_EditorScript._run()
#
#		q_EditorScript.add_root_node( Node.new() )
#
#		q_EditorScript.get_editor_interface()
#		q_EditorScript.get_scene()
#
#		if Autoload.WRONG_BUGS:
#			pass

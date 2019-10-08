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
		
#		var q_EditorScenePostImport : EditorScenePostImport = EditorScenePostImport.new()
#
#		q_EditorScenePostImport.post_import( Control.new())
#
#		q_EditorScenePostImport.get_source_file()
#		q_EditorScenePostImport.get_source_folder()
#
#		if Autoload.WRONG_BUGS:
#			pass

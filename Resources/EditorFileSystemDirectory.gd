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
		
		var q_EditorFileSystemDirectory : EditorFileSystemDirectory = EditorFileSystemDirectory.new()
		
		q_EditorFileSystemDirectory.
		q_EditorFileSystemDirectory.
		q_EditorFileSystemDirectory.
		
		if Autoload.WRONG_BUGS:
			pass

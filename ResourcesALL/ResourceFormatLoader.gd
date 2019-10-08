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
		
#		var q_ResourceFormatLoader : ResourceFormatLoader = ResourceFormatLoader.new()
		
#		q_ResourceFormatLoader.get_dependencies( "res://Groźny.txt", "Niechlujny" )
#		q_ResourceFormatLoader.get_recognized_extensions()
#		q_ResourceFormatLoader.get_resource_type( "res://Groźny.txt" )
#		q_ResourceFormatLoader.handles_type( "Przekroczyć" )
#		q_ResourceFormatLoader.load( "res://Groźny.txt", "res://Uspokoić.png" )
#		q_ResourceFormatLoader.rename_dependencies( "res://Groźny.txt", "Pojawoia" )
#
#		if Autoload.WRONG_BUGS:
#			pass

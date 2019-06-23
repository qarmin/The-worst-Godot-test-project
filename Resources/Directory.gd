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
		
		var q_Directory : Directory = Directory.new()
		
		qq += str(q_Directory.change_dir( "Ścieżka" ))
		#qq += str(q_Directory.copy( "Dominuje", "Walka" ))
		qq += str(q_Directory.current_is_dir())
		qq += str(q_Directory.dir_exists( "res://Pmr.png" ))
		qq += str(q_Directory.file_exists( "res://Pmr.png" ))
		
		qq += str(q_Directory.get_current_dir())
		qq += str(q_Directory.get_current_drive())
		#qq += str(q_Directory.get_drive( randi()%50))
		qq += str(q_Directory.get_drive_count())
		qq += str(q_Directory.get_next())
		qq += str(q_Directory.get_space_left())
		
		qq += str(q_Directory.list_dir_begin( bool(randi()%2), bool(randi()%2) ))
		q_Directory.list_dir_end()
		
		qq += str(q_Directory.make_dir( "res://Pmr.png" ))
		qq += str(q_Directory.make_dir_recursive( "res://Pmr.png" ))
		
		qq += str(q_Directory.open( "res://Pmr.png" ))
		qq += str(q_Directory.remove( "res://Pmr.png" ))
		qq += str(q_Directory.rename( "Dominuje", "Walka" ))
		
		if Autoload.WRONG_BUGS:
			pass

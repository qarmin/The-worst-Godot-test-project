extends Node2D

var q_Directory : Directory = Directory.new()
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
		if randi() % 2 == 1:
			q_Directory = Directory.new()
			
		
		if randi() % 2 == 1:
			qq += str(q_Directory.change_dir( "Ścieżka" ))
		if randi() % 2 == 1:
			qq += str(q_Directory.copy( "Dominuje", "Walka" ))
		if randi() % 2 == 1:
			qq += str(q_Directory.current_is_dir())
		if randi() % 2 == 1:
			qq += str(q_Directory.dir_exists( "res://Pmr.png" ))
		if randi() % 2 == 1:
			qq += str(q_Directory.file_exists( "res://Pmr.png" ))
			
		if randi() % 2 == 1:
			qq += str(q_Directory.get_current_dir())
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				qq += str(q_Directory.get_current_drive())
		if randi() % 2 == 1:
			qq += str(q_Directory.get_drive( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Directory.get_drive_count())
		if randi() % 2 == 1:
			qq += str(q_Directory.get_next())
		if randi() % 2 == 1:
			qq += str(q_Directory.get_space_left())
			
		if randi() % 2 == 1:
			qq += str(q_Directory.list_dir_begin( bool(randi()%2), bool(randi()%2) ))
		if randi() % 2 == 1:
			q_Directory.list_dir_end()
			
			if Autoload.SLOW_FUNCTIONS:
				if randi() % 2 == 1:
					qq += str(q_Directory.make_dir( "res://Pmr.png" ))
				if randi() % 2 == 1:
					qq += str(q_Directory.make_dir_recursive( "res://Pmr.png" ))
					
				if randi() % 2 == 1:
					qq += str(q_Directory.open( "res://Pmr.png" ))
				if randi() % 2 == 1:
					qq += str(q_Directory.remove( "res://Pmr.png" ))
				if randi() % 2 == 1:
					qq += str(q_Directory.rename( "Dominuje", "Walka" ))

extends Node2D

var q_ConfigFile : ConfigFile = ConfigFile.new()
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
			q_ConfigFile = ConfigFile.new()
			
		
		if randi() % 2 == 1:
			q_ConfigFile.erase_section( Autoload.get_string() )
			
		if randi() % 2 == 1:
			qq += str(q_ConfigFile.get_section_keys( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_ConfigFile.get_sections())
		if randi() % 2 == 1:
			qq += str(q_ConfigFile.get_value( Autoload.get_string(), Autoload.get_string(), Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_ConfigFile.has_section( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_ConfigFile.has_section_key( Autoload.get_string(), Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_ConfigFile.load( "res://TEMP/" + Autoload.get_string() ))
		if randi() % 2 == 1:
			q_ConfigFile.save( "res://TEMP/ConfigFile.txt" )
		if randi() % 2 == 1:
			q_ConfigFile.set_value( Autoload.get_string(), Autoload.get_string(), Autoload.get_string())

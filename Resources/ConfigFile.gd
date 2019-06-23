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
		
		var q_ConfigFile : ConfigFile = ConfigFile.new()
		
		q_ConfigFile.erase_section( "Sekcja" )
		
		#qq += str(q_ConfigFile.get_section_keys( "Sekcja" ))
		qq += str(q_ConfigFile.get_sections())
		qq += str(q_ConfigFile.get_value( "Sekcja", "Klucz", String() ))
		
		qq += str(q_ConfigFile.has_section( "Sekcja" ))
		qq += str(q_ConfigFile.has_section_key( "Sekcja", "Klucz" ))
		
		#qq += str(q_ConfigFile.load( "res://Sprite1.png" ))
		### q_ConfigFile.save( "res://Close.png" )
		q_ConfigFile.set_value( "Sekcja", "Klucz", String())
		
		if Autoload.WRONG_BUGS:
			pass

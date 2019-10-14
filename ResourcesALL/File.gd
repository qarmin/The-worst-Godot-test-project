extends Node2D

var q_File : File = File.new()
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
			q_File = File.new()
			
		
		if randi() % 2 == 1:
			q_File.set_endian_swap(Autoload.get_bool())
			
		if randi() % 2 == 1:
			q_File.close()
		if randi() % 2 == 1:
			qq += str(q_File.eof_reached())
		if randi() % 2 == 1:
			qq += str(q_File.file_exists( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_File.get_16())
		if randi() % 2 == 1:
			qq += str(q_File.get_32())
		if randi() % 2 == 1:
			qq += str(q_File.get_64())
		if randi() % 2 == 1:
			qq += str(q_File.get_8())
#	BUG	if randi() % 2 == 1:
#			qq += str(q_File.get_as_text())
		if randi() % 2 == 1:
			qq += str(q_File.get_buffer( Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_File.get_csv_line( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_File.get_double())
		if randi() % 2 == 1:
			qq += str(q_File.get_error())
		if randi() % 2 == 1:
			qq += str(q_File.get_float())
		if randi() % 2 == 1:
			qq += str(q_File.get_len())
		if randi() % 2 == 1:
			qq += str(q_File.get_line())
		if randi() % 2 == 1:
			qq += str(q_File.get_md5( Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(q_File.get_modified_time( Autoload.get_string() ))
#	BUG	if randi() % 2 == 1:
#			qq += str(q_File.get_pascal_string())
		if randi() % 2 == 1:
			qq += str(q_File.get_path())
		if randi() % 2 == 1:
			qq += str(q_File.get_path_absolute())
		if randi() % 2 == 1:
			qq += str(q_File.get_position())
		if randi() % 2 == 1:
			qq += str(q_File.get_real())
		if randi() % 2 == 1:
			qq += str(q_File.get_sha256( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_File.get_var( Autoload.get_bool()))
			
		if randi() % 2 == 1:
			qq += str(q_File.is_open())
			
		if randi() % 2 == 1:
			qq += str(q_File.open( "res://TEMP/" + Autoload.get_string(), randi() % 30 - 10))#randi() % 7 + 1))
		###q_File.open_compressed( "Sprite.png", randi() % 7 + 1, randi() % 4 )#ModeFlags, CompressionMode
		###q_File.open_encrypted( "Sprite.png", randi() % 7 + 1, Autoload.get_poolbytearray())#ModeFlags
		###q_File.open_encrypted_with_pass( "Sprite.png", randi() % 7 + 1, "Sprite.png" )#ModeFlags
			
		if randi() % 2 == 1:
			q_File.seek( Autoload.get_int() )
		if randi() % 2 == 1:
			q_File.seek_end( Autoload.get_int() )

		if randi() % 2 == 1:
			q_File.store_16( Autoload.get_int() )
		if randi() % 2 == 1:
			q_File.store_32( Autoload.get_int() )
		if randi() % 2 == 1:
			q_File.store_64( Autoload.get_int() )
		if randi() % 2 == 1:
			q_File.store_8( Autoload.get_int() )
		if randi() % 2 == 1:
			q_File.store_buffer( Autoload.get_poolbytearray())
		if randi() % 2 == 1:
			q_File.store_csv_line( Autoload.get_poolstringarray(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_double( Autoload.get_float() )
		if randi() % 2 == 1:
			q_File.store_float( Autoload.get_float() )
		if randi() % 2 == 1:
			q_File.store_line( Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_pascal_string( Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_real( Autoload.get_float() )
		if randi() % 2 == 1:
			q_File.store_string( Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_var( Autoload.get_string(), Autoload.get_bool())

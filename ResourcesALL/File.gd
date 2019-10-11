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
			q_File.set_endian_swap(bool(randi()%2))
			
		if randi() % 2 == 1:
			q_File.close()
		if randi() % 2 == 1:
			qq += str(q_File.eof_reached())
		if randi() % 2 == 1:
			qq += str(q_File.file_exists( "res://RES/Sprite1.png" ))
			
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
			qq += str(q_File.get_buffer( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_File.get_csv_line( "K" ))
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
			qq += str(q_File.get_md5( "res://RES/Sprite1.png"))
		if randi() % 2 == 1:
			qq += str(q_File.get_modified_time( "res://RES/Sprite1.png" ))
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
			qq += str(q_File.get_sha256( "res://RES/Sprite1.png" ))
		if randi() % 2 == 1:
			qq += str(q_File.get_var( bool(randi()%2)))
			
		if randi() % 2 == 1:
			qq += str(q_File.is_open())
			
		if randi() % 2 == 1:
			qq += str(q_File.open( "res://TEMP/" + Autoload.get_string(), randi() % 30 - 10))#randi() % 7 + 1))
		###q_File.open_compressed( "res://RES/Sprite1.png", randi() % 7 + 1, randi() % 4 )#ModeFlags, CompressionMode
		###q_File.open_encrypted( "res://RES/Sprite1.png", randi() % 7 + 1, PoolByteArray([11,124,1241,24,21,214,12,11]))#ModeFlags
		###q_File.open_encrypted_with_pass( "res://RES/Sprite1.png", randi() % 7 + 1, "res://RES/Sprite1.png" )#ModeFlags
			
		if randi() % 2 == 1:
			q_File.seek( randi()%50 )
		if randi() % 2 == 1:
			q_File.seek_end( randi()%50 )

		if randi() % 2 == 1:
			q_File.store_16( randi()%50 )
		if randi() % 2 == 1:
			q_File.store_32( randi()%50 )
		if randi() % 2 == 1:
			q_File.store_64( randi()%50 )
		if randi() % 2 == 1:
			q_File.store_8( randi()%50 )
		if randi() % 2 == 1:
			q_File.store_buffer( PoolByteArray([11,124,1241,24,21,214,12,11]))
		if randi() % 2 == 1:
			q_File.store_csv_line( PoolStringArray([]), Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_double( randf() * 50 )
		if randi() % 2 == 1:
			q_File.store_float( randf() * 50 )
		if randi() % 2 == 1:
			q_File.store_line( "Rzeka" )
		if randi() % 2 == 1:
			q_File.store_pascal_string( Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_real( randf() * 50 )
		if randi() % 2 == 1:
			q_File.store_string( Autoload.get_string() )
		if randi() % 2 == 1:
			q_File.store_var( Autoload.get_string(), bool(randi()%2))

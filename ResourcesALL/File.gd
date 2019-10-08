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
			
			var q_File : File = File.new()
			
			q_File.set_endian_swap(bool(randi()%2))
			
			q_File.close()
			qq += str(q_File.open( "res://Qwerty.txt", 3))#randi() % 7 + 1))#MOVED
			qq += str(q_File.eof_reached())
			qq += str(q_File.file_exists( "res://RES/Sprite1.png" ))
			
			qq += str(q_File.get_16())
			qq += str(q_File.get_32())
			qq += str(q_File.get_64())
			qq += str(q_File.get_8())
			qq += str(q_File.get_as_text())
			qq += str(q_File.get_buffer( randi()%50))
			qq += str(q_File.get_csv_line( "K" ))
			qq += str(q_File.get_double())
			qq += str(q_File.get_error())
			qq += str(q_File.get_float())
			qq += str(q_File.get_len())
			qq += str(q_File.get_line())
			qq += str(q_File.get_md5( "res://RES/Sprite1.png"))
			qq += str(q_File.get_modified_time( "res://RES/Sprite1.png" ))
			#qq += str(q_File.get_pascal_string())
			#qq += str(q_File.get_path())
			#qq += str(q_File.get_path_absolute())
			qq += str(q_File.get_position())
			qq += str(q_File.get_real())
			qq += str(q_File.get_sha256( "res://RES/Sprite1.png" ))
			#qq += str(q_File.get_var( bool(randi()%2)))
			
			qq += str(q_File.is_open())
			
			#MOVED q_File.open( "res://RES/Sprite1.png", randi() % 7 + 1)#ModeFlags
			###q_File.open_compressed( "res://RES/Sprite1.png", randi() % 7 + 1, randi() % 4 )#ModeFlags, CompressionMode
			###q_File.open_encrypted( "res://RES/Sprite1.png", randi() % 7 + 1, PoolByteArray([11,124,1241,24,21,214,12,11]))#ModeFlags
			###q_File.open_encrypted_with_pass( "res://RES/Sprite1.png", randi() % 7 + 1, "res://RES/Sprite1.png" )#ModeFlags
			
			# NOT NEEDED
	#		q_File.seek( randi()%50 )
	#		q_File.seek_end( randi()%50 )
	#
	#		q_File.store_16( randi()%50 )
	#		q_File.store_32( randi()%50 )
	#		q_File.store_64( randi()%50 )
	#		q_File.store_8( randi()%50 )
	#		#q_File.store_buffer( PoolByteArray([11,124,1241,24,21,214,12,11]))
	#		#q_File.store_csv_line( PoolStringArray([]), str(randi()%5000) )
	#		q_File.store_double( randf() * 50 )
	#		q_File.store_float( randf() * 50 )
	#		q_File.store_line( "Rzeka" )
	#		q_File.store_pascal_string( "Spiewajace puzony" )
	#		q_File.store_real( randf() * 50 )
	#		q_File.store_string( "Napraw to" )
	#		q_File.store_var( "QK", bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				q_File.set_endian_swap(bool(randi()%2))
				
				q_File.close()
				qq += str(q_File.open( "res://Qwerty.txt", 3))#randi() % 7 + 1))#MOVED
				qq += str(q_File.eof_reached())
				qq += str(q_File.file_exists( "res://RES/Sprite1.png" ))
				
				qq += str(q_File.get_16())
				qq += str(q_File.get_32())
				qq += str(q_File.get_64())
				qq += str(q_File.get_8())
				qq += str(q_File.get_as_text())
				qq += str(q_File.get_buffer( randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_File.get_csv_line( "K" ))
				qq += str(q_File.get_double())
				qq += str(q_File.get_error())
				qq += str(q_File.get_float())
				qq += str(q_File.get_len())
				qq += str(q_File.get_line())
				qq += str(q_File.get_md5( "res://RES/Sprite1.png"))
				qq += str(q_File.get_modified_time( "res://RES/Sprite1.png" ))
				qq += str(q_File.get_pascal_string())
				qq += str(q_File.get_path())
				qq += str(q_File.get_path_absolute())
				qq += str(q_File.get_position())
				qq += str(q_File.get_real())
				qq += str(q_File.get_sha256( "res://RES/Sprite1.png" ))
				qq += str(q_File.get_var( bool(randi()%2)))
				
				qq += str(q_File.is_open())
				
				#MOVED q_File.open( "res://RES/Sprite1.png", randi() % 7 + 1)#ModeFlags
				###q_File.open_compressed( "res://RES/Sprite1.png", randi() % 7 + 1, randi() % 4 )#ModeFlags, CompressionMode
				###q_File.open_encrypted( "res://RES/Sprite1.png", randi() % 7 + 1, PoolByteArray([11,124,1241,24,21,214,12,11]))#ModeFlags
				###q_File.open_encrypted_with_pass( "res://RES/Sprite1.png", randi() % 7 + 1, "res://RES/Sprite1.png" )#ModeFlags
				
				# NOT NEEDED
	#			q_File.seek( randi()%50 )
	#			q_File.seek_end( randi()%50 )
	#
	#			q_File.store_16( randi()%50 )
	#			q_File.store_32( randi()%50 )
	#			q_File.store_64( randi()%50 )
	#			q_File.store_8( randi()%50 )
	#			#q_File.store_buffer( PoolByteArray([11,124,1241,24,21,214,12,11]))
	#			#q_File.store_csv_line( PoolStringArray([]), str(randi()%5000) )
	#			q_File.store_double( randf() * 50 )
	#			q_File.store_float( randf() * 50 )
	#			q_File.store_line( "Rzeka" )
	#			q_File.store_pascal_string( "Spiewajace puzony" )
	#			q_File.store_real( randf() * 50 )
	#			q_File.store_string( "Napraw to" )
	#			q_File.store_var( "QK", bool(randi()%2))

extends Node2D

var q_File : File = File.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_File = File.new()

		if randi() % 2 == 1:
			q_File.set_endian_swap(Autoload.get_bool())

		if randi() % 2 == 1:
			q_File.close()
		if randi() % 2 == 1:
			q_File.eof_reached())
		if randi() % 2 == 1:
			q_File.file_exists( Autoload.get_string()))

		if randi() % 2 == 1:
			q_File.get_16())
		if randi() % 2 == 1:
			q_File.get_32())
		if randi() % 2 == 1:
			q_File.get_64())
		if randi() % 2 == 1:
			q_File.get_8())
#	BUG	if randi() % 2 == 1:
#			q_File.get_as_text())
		if randi() % 2 == 1:
			q_File.get_buffer( Autoload.get_int()))
		if randi() % 2 == 1:
			q_File.get_csv_line( Autoload.get_string()))
		if randi() % 2 == 1:
			q_File.get_double())
		if randi() % 2 == 1:
			q_File.get_error())
		if randi() % 2 == 1:
			q_File.get_float())
		if randi() % 2 == 1:
			q_File.get_len())
		if randi() % 2 == 1:
			q_File.get_line())
		if randi() % 2 == 1:
			q_File.get_md5( Autoload.get_string()))
		if randi() % 2 == 1:
			q_File.get_modified_time( Autoload.get_string()))
#	BUG	if randi() % 2 == 1:
#			q_File.get_pascal_string())
		if randi() % 2 == 1:
			q_File.get_path())
		if randi() % 2 == 1:
			q_File.get_path_absolute())
		if randi() % 2 == 1:
			q_File.get_position())
		if randi() % 2 == 1:
			q_File.get_real())
		if randi() % 2 == 1:
			q_File.get_sha256( Autoload.get_string()))
		if randi() % 2 == 1:
			q_File.get_var( Autoload.get_bool()))

		if randi() % 2 == 1:
			q_File.is_open())

		if randi() % 2 == 1:
			q_File.open( "res://TEMP/" + Autoload.get_string(), Autoload.get_int()))
		###q_File.open_compressed( "Sprite.png", Autoload.get_int(), Autoload.get_int())#ModeFlags, CompressionMode
		###q_File.open_encrypted( "Sprite.png", Autoload.get_int(), Autoload.get_poolbytearray())#ModeFlags
		###q_File.open_encrypted_with_pass( "Sprite.png", Autoload.get_int(), "Sprite.png" )#ModeFlags

		if randi() % 2 == 1:
			q_File.seek( Autoload.get_int())
		if randi() % 2 == 1:
			q_File.seek_end( Autoload.get_int())

		if randi() % 2 == 1:
			q_File.store_16( Autoload.get_int())
		if randi() % 2 == 1:
			q_File.store_32( Autoload.get_int())
		if randi() % 2 == 1:
			q_File.store_64( Autoload.get_int())
		if randi() % 2 == 1:
			q_File.store_8( Autoload.get_int())
		if randi() % 2 == 1:
			q_File.store_buffer( Autoload.get_poolbytearray())
		if randi() % 2 == 1:
			q_File.store_csv_line( Autoload.get_poolstringarray(), Autoload.get_string())
		if randi() % 2 == 1:
			q_File.store_double( Autoload.get_float())
		if randi() % 2 == 1:
			q_File.store_float( Autoload.get_float())
		if randi() % 2 == 1:
			q_File.store_line( Autoload.get_string())
		if randi() % 2 == 1:
			q_File.store_pascal_string( Autoload.get_string())
		if randi() % 2 == 1:
			q_File.store_real( Autoload.get_float())
		if randi() % 2 == 1:
			q_File.store_string( Autoload.get_string())
		if randi() % 2 == 1:
			q_File.store_var( Autoload.get_string(), Autoload.get_bool())

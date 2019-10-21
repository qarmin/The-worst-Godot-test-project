extends Node2D

var q_Image : Image = Image.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			var q_Image = Image.new()

		if randi() % 2 == 1:
			q_Image.blend_rect( Image.new(), Autoload.get_rect2f(1000.0), Autoload.get_vector2f(1000.0))
		if randi() % 2 == 1:
			q_Image.blend_rect_mask( Image.new(), Image.new(), Autoload.get_rect2f(1000.0), Autoload.get_vector2f(1000.0))

#	BUG	if randi() % 2 == 1:
#			q_Image.blit_rect( Image.new(), Autoload.get_rect2f(1000.0),Autoload.get_vector2f(1000.0))
		if randi() % 2 == 1:
			q_Image.blit_rect_mask( Image.new(), Image.new(), Autoload.get_rect2f(1000.0),Autoload.get_vector2f(1000.0))

#	BUG	if randi() % 2 == 1:
#			q_Image.bumpmap_to_normalmap( Autoload.get_floatf(1000.0))
		if randi() % 2 == 1:
			q_Image.clear_mipmaps()
#	BUG	if randi() % 2 == 1:
#			q_Image.compress( Autoload.get_int(), Autoload.get_int(), Autoload.get_floatf(1000.0))) #compressMode, #CompressSource
#		if randi() % 2 == 1:
#			q_Image.convert(Autoload.get_int()) #Format
		if randi() % 2 == 1:
			q_Image.copy_from( Image.new())

#	BUG	if randi() % 2 == 1:
#			q_Image.create( Autoload.get_inti(101), Autoload.get_inti(101), Autoload.get_bool(), Autoload.get_int()) #Format
		if randi() % 2 == 1:
			q_Image.create_from_data( Autoload.get_inti(101), Autoload.get_inti(101), Autoload.get_bool(), Autoload.get_int() , Autoload.get_poolbytearray())#Format

		if randi() % 2 == 1:
			q_Image.crop( Autoload.get_inti(101), Autoload.get_inti(101))
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_Image.decompress()
		if randi() % 2 == 1:
			q_Image.detect_alpha()
#	BUG	if randi() % 2 == 1:
#			q_Image.expand_x2_hq2x()
#	BUG	if randi() % 2 == 1:
#			q_Image.fill( Autoload.get_color())
		if randi() % 2 == 1:
			q_Image.fix_alpha_edges()

		if randi() % 2 == 1:
			q_Image.flip_x()
		if randi() % 2 == 1:
			q_Image.flip_y()

#	BUG	if randi() % 2 == 1:
#			q_Image.generate_mipmaps( Autoload.get_bool()))

		if randi() % 2 == 1:
			q_Image.get_data()
		if randi() % 2 == 1:
			q_Image.get_format()
		if randi() % 2 == 1:
			q_Image.get_height()
		if randi() % 2 == 1:
			q_Image.get_mipmap_offset( Autoload.get_inti(101))
#	BUG	if randi() % 2 == 1:
#			q_Image.get_pixel( Autoload.get_inti(101), Autoload.get_inti(101))
#		if randi() % 2 == 1:
#			q_Image.get_pixelv( Autoload.get_vector2f(1000.0))
		if randi() % 2 == 1:
			q_Image.get_rect( Autoload.get_rect2f(1000.0))
		if randi() % 2 == 1:
			q_Image.get_size()
#	BUG	if randi() % 2 == 1:
#			q_Image.get_used_rect()
		if randi() % 2 == 1:
			q_Image.get_width()

		if randi() % 2 == 1:
			q_Image.has_mipmaps()

		if randi() % 2 == 1:
			q_Image.is_compressed()
		if randi() % 2 == 1:
			q_Image.is_empty()
		if randi() % 2 == 1:
			q_Image.is_invisible()

		if randi() % 2 == 1:
			q_Image.load( "Sprite.png" )
		if randi() % 2 == 1:
			q_Image.load_jpg_from_buffer( Autoload.get_poolbytearray())
		if randi() % 2 == 1:
			q_Image.load_png_from_buffer( Autoload.get_poolbytearray())
		if randi() % 2 == 1:
			q_Image.load_webp_from_buffer( Autoload.get_poolbytearray())

		if randi() % 2 == 1:
			q_Image.lock()
		if randi() % 2 == 1:
			q_Image.normalmap_to_xy()
		if randi() % 2 == 1:
			q_Image.premultiply_alpha()

		if randi() % 2 == 1:
			q_Image.resize( Autoload.get_inti(101), Autoload.get_inti(101), Autoload.get_int())  #Interpolation
		if randi() % 2 == 1:
			q_Image.resize_to_po2( Autoload.get_bool())

		if randi() % 2 == 1:
			q_Image.rgbe_to_srgb()
		if randi() % 2 == 1:
			q_Image.save_png( "res://TEMP/Image" )

#		if randi() % 2 == 1:
#			q_Image.set_pixel( Autoload.get_inti(101), Autoload.get_inti(101),Autoload.get_color())
#		if randi() % 2 == 1:
#			q_Image.set_pixelv( Autoload.get_vector2f(1000.0),Autoload.get_color())

		if randi() % 2 == 1:
			q_Image.shrink_x2()
		if randi() % 2 == 1:
			q_Image.srgb_to_linear()
		if randi() % 2 == 1:
			q_Image.unlock()

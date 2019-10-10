extends Node2D

var q_Image : Image = Image.new()
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
			var q_Image = Image.new()
			
		
		if randi() % 2 == 1:
			q_Image.blend_rect( Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )
		if randi() % 2 == 1:
			q_Image.blend_rect_mask( Image.new(), Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )

#	BUG	if randi() % 2 == 1:
#			q_Image.blit_rect( Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )
		if randi() % 2 == 1:
			q_Image.blit_rect_mask( Image.new(), Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )

#	BUG	if randi() % 2 == 1:
#			q_Image.bumpmap_to_normalmap( randf() * 10 - 5)
		if randi() % 2 == 1:
			q_Image.clear_mipmaps()
#	BUG	if randi() % 2 == 1:
#			qq += str(q_Image.compress( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * 10 - 5)) #compressMode, #CompressSource
#		if randi() % 2 == 1:
#			q_Image.convert(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Format
		if randi() % 2 == 1:
			q_Image.copy_from( Image.new() )

		if randi() % 2 == 1:
			q_Image.create( randi() % 10 - 5, randi() % 10 - 5, bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2 ) #Format
		if randi() % 2 == 1:
			q_Image.create_from_data( randi() % 10 - 5, randi() % 10 - 5, bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2 , PoolByteArray([11,124,1241,24,21,214,12,11]))#Format

		if randi() % 2 == 1:
			q_Image.crop( randi() % 10 - 5, randi() % 10 - 5 )
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				qq += str(q_Image.decompress())
		if randi() % 2 == 1:
			qq += str(q_Image.detect_alpha())
#	BUG	if randi() % 2 == 1:
#			q_Image.expand_x2_hq2x()
#		if randi() % 2 == 1:
#			q_Image.fill( Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Image.fix_alpha_edges()

		if randi() % 2 == 1:
			q_Image.flip_x()
		if randi() % 2 == 1:
			q_Image.flip_y()

#	BUG	if randi() % 2 == 1:
#			qq += str(q_Image.generate_mipmaps( bool(randi()%2)))

		if randi() % 2 == 1:
			qq += str(q_Image.get_data())
		if randi() % 2 == 1:
			qq += str(q_Image.get_format())
		if randi() % 2 == 1:
			qq += str(q_Image.get_height())
		if randi() % 2 == 1:
			qq += str(q_Image.get_mipmap_offset( randi() % 10 - 5 ))
#	BUG	if randi() % 2 == 1:
#			qq += str(q_Image.get_pixel( randi() % 10 - 5, randi() % 10 - 5 ))
#		if randi() % 2 == 1:
#			qq += str(q_Image.get_pixelv( Vector2(randf() * 10 - 5,randf() * 10 - 5)))
		if randi() % 2 == 1:
			qq += str(q_Image.get_rect( Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5))))
		if randi() % 2 == 1:
			qq += str(q_Image.get_size())
#	BUG	if randi() % 2 == 1:
#			qq += str(q_Image.get_used_rect())
		if randi() % 2 == 1:
			qq += str(q_Image.get_width())

		if randi() % 2 == 1:
			qq += str(q_Image.has_mipmaps())

		if randi() % 2 == 1:
			qq += str(q_Image.is_compressed())
		if randi() % 2 == 1:
			qq += str(q_Image.is_empty())
		if randi() % 2 == 1:
			qq += str(q_Image.is_invisible())

		if randi() % 2 == 1:
			qq += str(q_Image.load( "res://RES/Sprite1.png" ))
		if randi() % 2 == 1:
			qq += str(q_Image.load_jpg_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
		if randi() % 2 == 1:
			qq += str(q_Image.load_png_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
		if randi() % 2 == 1:
			qq += str(q_Image.load_webp_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))

		if randi() % 2 == 1:
			q_Image.lock()
		if randi() % 2 == 1:
			q_Image.normalmap_to_xy()
		if randi() % 2 == 1:
			q_Image.premultiply_alpha()

		if randi() % 2 == 1:
			q_Image.resize( randi() % 10 - 5, randi() % 10 - 5, Autoload.RANGE - Autoload.RANGE / 2)  #Interpolation
		if randi() % 2 == 1:
			q_Image.resize_to_po2( bool(randi()%2))

		if randi() % 2 == 1:
			qq += str(q_Image.rgbe_to_srgb())
		if randi() % 2 == 1:
			qq += str(q_Image.save_png( "res://lafar" ))

#		if randi() % 2 == 1:
#			q_Image.set_pixel( randi() % 10 - 5, randi() % 10 - 5,Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			q_Image.set_pixelv( Vector2(randf() * 10 - 5,randf() * 10 - 5),Color(randf(),randf(),randf(),randf()))

		if randi() % 2 == 1:
			q_Image.shrink_x2()
		if randi() % 2 == 1:
			q_Image.srgb_to_linear()
		if randi() % 2 == 1:
			q_Image.unlock()

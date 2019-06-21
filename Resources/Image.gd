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
		
		var q_Image : Image = Image.new()
		
		#q_Image.blend_rect( Image.new(), Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) )
		#q_Image.blend_rect_mask( Image.new(), Image.new(), Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) )
		
		#q_Image.blit_rect( Image.new(), Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) )
		#q_Image.blit_rect_mask( Image.new(), Image.new(), Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) )
		
		q_Image.bumpmap_to_normalmap( randf() * 50)
		q_Image.clear_mipmaps()
		#qq += str(q_Image.compress( randi() % 5, randi() %3, randf() * 50)) #compressMode, #CompressSource
		q_Image.convert(randi() % q_Image.FORMAT_MAX ) #Format
		q_Image.copy_from( Image.new() )
		
		#q_Image.create( randi()%50, randi()%50, bool(randi()%2), randi() % q_Image.FORMAT_MAX ) #Format
		#q_Image.create_from_data( randi()%50, randi()%50, bool(randi()%2), randi() % q_Image.FORMAT_MAX , PoolByteArray([11,124,1241,24,21,214,12,11]))#Format
		
		#q_Image.crop( randi()%50, randi()%50 )
		#qq += str(q_Image.decompress())
		qq += str(q_Image.detect_alpha())
		#q_Image.expand_x2_hq2x()
		#q_Image.fill( Color(randf(),randf(),randf(),randf()))
		q_Image.fix_alpha_edges()
		
		#q_Image.flip_x()
		#q_Image.flip_y()
		
		#qq += str(q_Image.generate_mipmaps( bool(randi()%2)))
		
		qq += str(q_Image.get_data())
		qq += str(q_Image.get_format())
		qq += str(q_Image.get_height())
		#qq += str(q_Image.get_mipmap_offset( randi()%50 ))
		#qq += str(q_Image.get_pixel( randi()%50, randi()%50 ))
		#qq += str(q_Image.get_pixelv( Vector2(randf() * 50,randf() * 50)))
		#qq += str(q_Image.get_rect( Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))))
		qq += str(q_Image.get_size())
		qq += str(q_Image.get_used_rect())
		qq += str(q_Image.get_width())
		
		qq += str(q_Image.has_mipmaps())
		
		qq += str(q_Image.is_compressed())
		qq += str(q_Image.is_empty())
		qq += str(q_Image.is_invisible())
		
		#qq += str(q_Image.load( "res://Sprite1.png" ))
		#qq += str(q_Image.load_jpg_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
		#qq += str(q_Image.load_png_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
		#qq += str(q_Image.load_webp_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
		
		#q_Image.lock()
		#q_Image.normalmap_to_xy()
		q_Image.premultiply_alpha()
		
		#q_Image.resize( randi()%50, randi()%50, randi() % 5)  #Interpolation
		#q_Image.resize_to_po2( bool(randi()%2))
		
		#qq += str(q_Image.rgbe_to_srgb())
		#qq += str(q_Image.save_png( "res://lafar.png" ))
		
		#q_Image.set_pixel( randi()%50, randi()%50,Color(randf(),randf(),randf(),randf()))
		#q_Image.set_pixelv( Vector2(randf() * 50,randf() * 50),Color(randf(),randf(),randf(),randf()))
		
		#q_Image.shrink_x2()
		#q_Image.srgb_to_linear()
		q_Image.unlock()
		
		if Autoload.WRONG_BUGS:

			q_Image.blend_rect( Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )
			q_Image.blend_rect_mask( Image.new(), Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )

			q_Image.blit_rect( Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )
			q_Image.blit_rect_mask( Image.new(), Image.new(), Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5)), Vector2(randf() * 10 - 5,randf() * 10 - 5) )

			q_Image.bumpmap_to_normalmap( randf() * 10 - 5)
			q_Image.clear_mipmaps()
			qq += str(q_Image.compress( randi() % 10 - 5, randi() % 10 - 5, randf() * 10 - 5)) #compressMode, #CompressSource
			q_Image.convert(randi() % 10 - 5) #Format
			q_Image.copy_from( Image.new() )

#			q_Image.create( randi() % 10 - 5, randi() % 10 - 5, bool(randi()%2), randi() % q_Image.FORMAT_MAX ) #Format
#			q_Image.create_from_data( randi() % 10 - 5, randi() % 10 - 5, bool(randi()%2), randi() % 10 - 5 , PoolByteArray([11,124,1241,24,21,214,12,11]))#Format
#
#			q_Image.crop( randi() % 10 - 5, randi() % 10 - 5 )
#			### TOO MANY BUGS AND TOO SLOW qq += str(q_Image.decompress())
#			qq += str(q_Image.detect_alpha())
#			q_Image.expand_x2_hq2x()
#			q_Image.fill( Color(randf(),randf(),randf(),randf()))
#			q_Image.fix_alpha_edges()
#
#			q_Image.flip_x()
#			q_Image.flip_y()
#
#			qq += str(q_Image.generate_mipmaps( bool(randi()%2)))
#
#			qq += str(q_Image.get_data())
#			qq += str(q_Image.get_format())
#			qq += str(q_Image.get_height())
#			qq += str(q_Image.get_mipmap_offset( randi() % 10 - 5 ))
#			qq += str(q_Image.get_pixel( randi() % 10 - 5, randi() % 10 - 5 ))
#			qq += str(q_Image.get_pixelv( Vector2(randf() * 10 - 5,randf() * 10 - 5)))
#			qq += str(q_Image.get_rect( Rect2(Vector2(randf() * 10 - 5,randf() * 10 - 5),Vector2(randf() * 10 - 5,randf() * 10 - 5))))
#			qq += str(q_Image.get_size())
#			qq += str(q_Image.get_used_rect())
#			qq += str(q_Image.get_width())
#
#			qq += str(q_Image.has_mipmaps())
#
#			qq += str(q_Image.is_compressed())
#			qq += str(q_Image.is_empty())
#			qq += str(q_Image.is_invisible())
#
#			qq += str(q_Image.load( "res://Sprite1.png" ))
#			qq += str(q_Image.load_jpg_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
#			qq += str(q_Image.load_png_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
#			qq += str(q_Image.load_webp_from_buffer( PoolByteArray([11,124,1241,24,21,214,12,11])))
#
#			q_Image.lock()
#			q_Image.normalmap_to_xy()
#			q_Image.premultiply_alpha()
#
#			q_Image.resize( randi() % 10 - 5, randi() % 10 - 5, randi() % 5)  #Interpolation
#			q_Image.resize_to_po2( bool(randi()%2))
#
#			qq += str(q_Image.rgbe_to_srgb())
#			qq += str(q_Image.save_png( "res://lafar.png" ))
#
#			q_Image.set_pixel( randi() % 10 - 5, randi() % 10 - 5,Color(randf(),randf(),randf(),randf()))
#			q_Image.set_pixelv( Vector2(randf() * 10 - 5,randf() * 10 - 5),Color(randf(),randf(),randf(),randf()))
#
#			q_Image.shrink_x2()
#			q_Image.srgb_to_linear()
#			q_Image.unlock()

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
		
		var q_String : String
		
		q_String = String( bool(randi()%2))
		q_String = String( randi()%50)
		q_String = String( randf() * 50)
		q_String = String( Vector2(randf() * 50,randf() * 50))
		q_String = String( Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		q_String = String( Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_String = String( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		q_String = String( Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50))
		q_String = String( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50))
		q_String = String( AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		q_String = String( Basis(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		q_String = String( Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		q_String = String( Color(randf(),randf(),randf(),randf()))
		q_String = String( NodePath("."))
		q_String = String( RID())
		q_String = String( {"Ouo": 15, "Kompresja": 124})
		q_String = String( [124,214,214,124,214,214,2])
		q_String = String( PoolByteArray([randi()%50]))
		q_String = String( PoolIntArray([randi()%50]))
		q_String = String( PoolRealArray([randf() * 50]))
		q_String = String( PoolStringArray(["60"]))
		q_String = String( PoolVector2Array([Vector2(randf() * 50,randf() * 50)]))
		q_String = String( PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50)]))
		q_String = String( PoolColorArray([Color(randf(),randf(),randf(),randf())]))
		
		qq += str(q_String.begins_with( "Krwawy Bieg"))
		qq += str(q_String.bigrams())
		qq += str(q_String.c_escape())
		qq += str(q_String.c_unescape())
		qq += str(q_String.capitalize())
		qq += str(q_String.casecmp_to( "Krew i Wino" ))
		qq += str(q_String.dedent())
		qq += str(q_String.empty())
		qq += str(q_String.ends_with( "Fanfary i Kwiaty" ))
		qq += str(q_String.erase( randi()%50,randi()%50))
		
		qq += str(q_String.find( "Za Honor! Za Toussaint!", randi()%50))
		qq += str(q_String.find_last( "Nie mogę cię zostawić" ))
		qq += str(q_String.findn( "Winna Wojna", randi()%50))
		
		#qq += str(q_String.format( "Kupcy Novigradu", "Vivienne" ))
		
		qq += str(q_String.get_base_dir())
		qq += str(q_String.get_basename())
		qq += str(q_String.get_extension())
		qq += str(q_String.get_file())
		
		qq += str(q_String.hash())
		qq += str(q_String.hex_to_int())
		
		qq += str(q_String.http_escape())
		qq += str(q_String.http_unescape())
		
		qq += str(q_String.insert( randi()%50, "Co leży niewidoczne" ))
		
		qq += str(q_String.is_abs_path())
		qq += str(q_String.is_rel_path())
		qq += str(q_String.is_subsequence_of( "Mandragora" ))
		qq += str(q_String.is_subsequence_ofi( "Księżyc ponad górą Gorgona" ))
		qq += str(q_String.is_valid_filename())
		qq += str(q_String.is_valid_float())
		qq += str(q_String.is_valid_hex_number( bool(randi()%2)))
		qq += str(q_String.is_valid_html_color())
		qq += str(q_String.is_valid_identifier())
		qq += str(q_String.is_valid_integer())
		qq += str(q_String.is_valid_ip_address())
		
		qq += str(q_String.json_escape())
		qq += str(q_String.left( randi()%50))
		qq += str(q_String.length())
		qq += str(q_String.lstrip( "Bestia z Beauclair" ))
		
		qq += str(q_String.match( "Pani Jeziora" ))
		qq += str(q_String.matchn( "Syanna" ))
		
		qq += str(q_String.md5_buffer())
		qq += str(q_String.md5_text())
		
		qq += str(q_String.nocasecmp_to( "Poszukiwanie Cecilia Bellant" ))
		#qq += str(q_String.ord_at( randi()%50))
		
		qq += str(q_String.pad_decimals( randi()%50))
		qq += str(q_String.pad_zeros( randi()%50))
		
		qq += str(q_String.percent_decode())
		qq += str(q_String.percent_encode())
		
		qq += str(q_String.plus_file( "Zbliża się polowanie" ))
		
		qq += str(q_String.replace( "Emhyr var Emreis", "Geralt of Rivia" ))
		qq += str(q_String.replacen( "Emhyr var Emreis", "Geralt of Rivia" ))
		
		qq += str(q_String.rfind( "Emhyr var Emreis", randi()%50))
		qq += str(q_String.rfindn( "Emhyr var Emreis", randi()%50))
		
		qq += str(q_String.right( randi()%50))
		qq += str(q_String.rsplit( "Srebry dla potworów...", bool(randi()%2), randi()%50))
		qq += str(q_String.rstrip( "... Stalowy dla ludzi" ))
		
		qq += str(q_String.sha256_buffer())
		qq += str(q_String.sha256_text())
		
		qq += str(q_String.similarity( "Witaj Imlerith" ))
		
		qq += str(q_String.split( "Srebry dla potworów...", bool(randi()%2), randi()%50))
		qq += str(q_String.split_floats( "Srebry dla potworów...",bool(randi()%2) ))
		
		qq += str(q_String.strip_edges( bool(randi()%2),bool(randi()%2)))
		qq += str(q_String.strip_escapes())
		
		qq += str(q_String.substr( randi()%50,randi()%50))
		
		qq += str(q_String.to_ascii())
		qq += str(q_String.to_float())
		qq += str(q_String.to_int())
		qq += str(q_String.to_lower())
		qq += str(q_String.to_upper())
		qq += str(q_String.to_utf8())
		
		qq += str(q_String.trim_prefix( "Kaer Morhen" ))
		qq += str(q_String.trim_suffix( "Oczy Wilka" ))
		
		qq += str(q_String.xml_escape())
		qq += str(q_String.xml_unescape())

		if Autoload.WRONG_BUGS:
			q_String = String( bool(randi()%2))
			q_String = String( randi() % 1000 - 500)
			q_String = String( randf() * 1000 - 500)
			q_String = String( Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_String = String( Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			q_String = String( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_String = String( Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			q_String = String( Plane(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_String = String( Quat(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_String = String( AABB(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			q_String = String( Basis(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			q_String = String( Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			q_String = String( Color(randf(),randf(),randf(),randf()))
			q_String = String( NodePath("asf."))
			q_String = String( RID())
			q_String = String( {"Ouo": 15, "Kompresja": 124})
			q_String = String( [124,214,214,124,214,214,2])
			q_String = String( PoolByteArray([randi() % 1000 - 500]))
			q_String = String( PoolIntArray([randi() % 1000 - 500]))
			q_String = String( PoolRealArray([randf() * 1000 - 500]))
			q_String = String( PoolStringArray(["60"]))
			q_String = String( PoolVector2Array([Vector2(randf() * 1000 - 500,randf() * 1000 - 500)]))
			q_String = String( PoolVector3Array([Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)]))
			q_String = String( PoolColorArray([Color(randf(),randf(),randf(),randf())]))
			
			qq += str(q_String.begins_with( "Krwawy Bieg"))
			qq += str(q_String.bigrams())
			qq += str(q_String.c_escape())
			qq += str(q_String.c_unescape())
			qq += str(q_String.capitalize())
			qq += str(q_String.casecmp_to( "Krew i Wino" ))
			qq += str(q_String.dedent())
			qq += str(q_String.empty())
			qq += str(q_String.ends_with( "Fanfary i Kwiaty" ))
			qq += str(q_String.erase( randi() % 1000 - 500,randi() % 1000 - 500))
			
			qq += str(q_String.find( "Za Honor! Za Toussaint!", randi() % 1000 - 500))
			qq += str(q_String.find_last( "Nie mogę cię zostawić" ))
			qq += str(q_String.findn( "Winna Wojna", randi() % 1000 - 500))
			
			qq += str(q_String.format( "Kupcy Novigradu", "Vivienne" ))
			
			qq += str(q_String.get_base_dir())
			qq += str(q_String.get_basename())
			qq += str(q_String.get_extension())
			qq += str(q_String.get_file())
			
			qq += str(q_String.hash())
			qq += str(q_String.hex_to_int())
			
			qq += str(q_String.http_escape())
			qq += str(q_String.http_unescape())
			
			qq += str(q_String.insert( randi() % 1000 - 500, "Co leży niewidoczne" ))
			
			qq += str(q_String.is_abs_path())
			qq += str(q_String.is_rel_path())
			qq += str(q_String.is_subsequence_of( "Mandragora" ))
			qq += str(q_String.is_subsequence_ofi( "Księżyc ponad górą Gorgona" ))
			qq += str(q_String.is_valid_filename())
			qq += str(q_String.is_valid_float())
			qq += str(q_String.is_valid_hex_number( bool(randi()%2)))
			qq += str(q_String.is_valid_html_color())
			qq += str(q_String.is_valid_identifier())
			qq += str(q_String.is_valid_integer())
			qq += str(q_String.is_valid_ip_address())
			
			qq += str(q_String.json_escape())
			qq += str(q_String.left( randi() % 1000 - 500))
			qq += str(q_String.length())
			qq += str(q_String.lstrip( "Bestia z Beauclair" ))
			
			qq += str(q_String.match( "Pani Jeziora" ))
			qq += str(q_String.matchn( "Syanna" ))
			
			qq += str(q_String.md5_buffer())
			qq += str(q_String.md5_text())
			
			qq += str(q_String.nocasecmp_to( "Poszukiwanie Cecilia Bellant" ))
			qq += str(q_String.ord_at( randi() % 1000 - 500))
			
			qq += str(q_String.pad_decimals( randi() % 1000 - 500))
			qq += str(q_String.pad_zeros( randi() % 1000 - 500))
			
			qq += str(q_String.percent_decode())
			qq += str(q_String.percent_encode())
			
			qq += str(q_String.plus_file( "Zbliża się polowanie" ))
			
			qq += str(q_String.replace( "Emhyr var Emreis", "Geralt of Rivia" ))
			qq += str(q_String.replacen( "Emhyr var Emreis", "Geralt of Rivia" ))
			
			qq += str(q_String.rfind( "Emhyr var Emreis", randi() % 1000 - 500))
			qq += str(q_String.rfindn( "Emhyr var Emreis", randi() % 1000 - 500))
			
			qq += str(q_String.right( randi() % 1000 - 500))
			qq += str(q_String.rsplit( "Srebry dla potworów...", bool(randi()%2), randi() % 1000 - 500))
			qq += str(q_String.rstrip( "... Stalowy dla ludzi" ))
			
			qq += str(q_String.sha256_buffer())
			qq += str(q_String.sha256_text())
			
			qq += str(q_String.similarity( "Witaj Imlerith" ))
			
			qq += str(q_String.split( "Srebry dla potworów...", bool(randi()%2), randi() % 1000 - 500))
			qq += str(q_String.split_floats( "Srebry dla potworów...",bool(randi()%2) ))
			
			qq += str(q_String.strip_edges( bool(randi()%2),bool(randi()%2)))
			qq += str(q_String.strip_escapes())
			
			qq += str(q_String.substr( randi() % 1000 - 500,randi() % 1000 - 500))
			
			qq += str(q_String.to_ascii())
			qq += str(q_String.to_float())
			qq += str(q_String.to_int())
			qq += str(q_String.to_lower())
			qq += str(q_String.to_upper())
			qq += str(q_String.to_utf8())
			
			qq += str(q_String.trim_prefix( "Kaer Morhen" ))
			qq += str(q_String.trim_suffix( "Oczy Wilka" ))
			
			qq += str(q_String.xml_escape())
			qq += str(q_String.xml_unescape())

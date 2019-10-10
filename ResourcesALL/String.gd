extends Node2D

var q_String : String
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
			if randi() % 2 == 1:
				q_String = String( bool(randi()%2))
			if randi() % 2 == 1:
				q_String = String( randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_String = String( randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_String = String( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_String = String( Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_String = String( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_String = String( Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_String = String( Plane(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_String = String( Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_String = String( AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_String = String( Basis(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_String = String( Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_String = String( Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_String = String( NodePath("asf."))
			if randi() % 2 == 1:
				q_String = String( RID())
			if randi() % 2 == 1:
				q_String = String( {"Ouo": 15, "Kompresja": 124})
			if randi() % 2 == 1:
				q_String = String( [124,214,214,124,214,214,2])
			if randi() % 2 == 1:
				q_String = String( PoolByteArray([randi() % Autoload.RANGE - Autoload.RANGE / 2]))
			if randi() % 2 == 1:
				q_String = String( PoolIntArray([randi() % Autoload.RANGE - Autoload.RANGE / 2]))
			if randi() % 2 == 1:
				q_String = String( PoolRealArray([randf() * Autoload.RANGE - Autoload.RANGE / 2]))
			if randi() % 2 == 1:
				q_String = String( PoolStringArray(["60"]))
			if randi() % 2 == 1:
				q_String = String( PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				q_String = String( PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				q_String = String( PoolColorArray([Color(randf(),randf(),randf(),randf())]))
			
		if randi() % 2 == 1:
			qq += str(q_String.begins_with( "Krwawy Bieg"))
		if randi() % 2 == 1:
			qq += str(q_String.bigrams())
		if randi() % 2 == 1:
			qq += str(q_String.c_escape())
		if randi() % 2 == 1:
			qq += str(q_String.c_unescape())
		if randi() % 2 == 1:
			qq += str(q_String.capitalize())
		if randi() % 2 == 1:
			qq += str(q_String.casecmp_to( "Krew i Wino" ))
		if randi() % 2 == 1:
			qq += str(q_String.dedent())
		if randi() % 2 == 1:
			qq += str(q_String.empty())
		if randi() % 2 == 1:
			qq += str(q_String.ends_with( "Fanfary i Kwiaty" ))
		if randi() % 2 == 1:
			qq += str(q_String.erase( randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_String.find( "Za Honor! Za Toussaint!", randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.find_last( "Nie mogę cię zostawić" ))
		if randi() % 2 == 1:
			qq += str(q_String.findn( "Winna Wojna", randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_String.format( "Kupcy Novigradu", "Vivienne" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.get_base_dir())
		if randi() % 2 == 1:
			qq += str(q_String.get_basename())
		if randi() % 2 == 1:
			qq += str(q_String.get_extension())
		if randi() % 2 == 1:
			qq += str(q_String.get_file())
			
		if randi() % 2 == 1:
			qq += str(q_String.hash())
		if randi() % 2 == 1:
			qq += str(q_String.hex_to_int())
			
		if randi() % 2 == 1:
			qq += str(q_String.http_escape())
		if randi() % 2 == 1:
			qq += str(q_String.http_unescape())
			
		if randi() % 2 == 1:
			qq += str(q_String.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Co leży niewidoczne" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.is_abs_path())
		if randi() % 2 == 1:
			qq += str(q_String.is_rel_path())
		if randi() % 2 == 1:
			qq += str(q_String.is_subsequence_of( "Mandragora" ))
		if randi() % 2 == 1:
			qq += str(q_String.is_subsequence_ofi( "Księżyc ponad górą Gorgona" ))
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_filename())
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_float())
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_hex_number( bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_html_color())
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_identifier())
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_integer())
		if randi() % 2 == 1:
			qq += str(q_String.is_valid_ip_address())
			
		if randi() % 2 == 1:
			qq += str(q_String.json_escape())
		if randi() % 2 == 1:
			qq += str(q_String.left( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.length())
		if randi() % 2 == 1:
			qq += str(q_String.lstrip( "Bestia z Beauclair" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.match( "Pani Jeziora" ))
		if randi() % 2 == 1:
			qq += str(q_String.matchn( "Syanna" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.md5_buffer())
		if randi() % 2 == 1:
			qq += str(q_String.md5_text())
			
		if randi() % 2 == 1:
			qq += str(q_String.nocasecmp_to( "Poszukiwanie Cecilia Bellant" ))
		if randi() % 2 == 1:
			qq += str(q_String.ord_at( randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_String.pad_decimals( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.pad_zeros( randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_String.percent_decode())
		if randi() % 2 == 1:
			qq += str(q_String.percent_encode())
			
		if randi() % 2 == 1:
			qq += str(q_String.plus_file( "Zbliża się polowanie" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.replace( "Emhyr var Emreis", "Geralt of Rivia" ))
		if randi() % 2 == 1:
			qq += str(q_String.replacen( "Emhyr var Emreis", "Geralt of Rivia" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.rfind( "Emhyr var Emreis", randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.rfindn( "Emhyr var Emreis", randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_String.right( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.rsplit( "Srebry dla potworów...", bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.rstrip( "... Stalowy dla ludzi" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.sha256_buffer())
		if randi() % 2 == 1:
			qq += str(q_String.sha256_text())
			
		if randi() % 2 == 1:
			qq += str(q_String.similarity( "Witaj Imlerith" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.split( "Srebry dla potworów...", bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_String.split_floats( "Srebry dla potworów...",bool(randi()%2) ))
			
		if randi() % 2 == 1:
			qq += str(q_String.strip_edges( bool(randi()%2),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_String.strip_escapes())
			
		if randi() % 2 == 1:
			qq += str(q_String.substr( randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_String.to_ascii())
		if randi() % 2 == 1:
			qq += str(q_String.to_float())
		if randi() % 2 == 1:
			qq += str(q_String.to_int())
		if randi() % 2 == 1:
			qq += str(q_String.to_lower())
		if randi() % 2 == 1:
			qq += str(q_String.to_upper())
		if randi() % 2 == 1:
			qq += str(q_String.to_utf8())
			
		if randi() % 2 == 1:
			qq += str(q_String.trim_prefix( "Kaer Morhen" ))
		if randi() % 2 == 1:
			qq += str(q_String.trim_suffix( "Oczy Wilka" ))
			
		if randi() % 2 == 1:
			qq += str(q_String.xml_escape())
		if randi() % 2 == 1:
			qq += str(q_String.xml_unescape())

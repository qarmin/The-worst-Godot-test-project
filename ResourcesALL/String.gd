extends Node2D

var q_String : String = ""
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
				q_String = String( Autoload.get_randi())
			if randi() % 2 == 1:
				q_String = String( Autoload.get_randf())
			if randi() % 2 == 1:
				q_String = String( Vector2(Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_String = String( Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
			if randi() % 2 == 1:
				q_String = String( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_String = String( Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
			if randi() % 2 == 1:
				q_String = String( Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_String = String( Quat(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_String = String( AABB(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
			if randi() % 2 == 1:
				q_String = String( Basis(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
			if randi() % 2 == 1:
				q_String = String( Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
			if randi() % 2 == 1:
				q_String = String( Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_String = String( NodePath(Autoload.get_string()))
			if randi() % 2 == 1:
				q_String = String( RID())
			if randi() % 2 == 1:
				q_String = String( {Autoload.get_string(): 15, Autoload.get_string(): 124})
			if randi() % 2 == 1:
				q_String = String( [124,214,214,124,214,214,2])
			if randi() % 2 == 1:
				q_String = String( PoolByteArray([Autoload.get_randi()]))
			if randi() % 2 == 1:
				q_String = String( PoolIntArray([Autoload.get_randi()]))
			if randi() % 2 == 1:
				q_String = String( PoolRealArray([Autoload.get_randf()]))
			if randi() % 2 == 1:
				q_String = String( PoolStringArray([Autoload.get_string()]))
			if randi() % 2 == 1:
				q_String = String( PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf())]))
			if randi() % 2 == 1:
				q_String = String( PoolVector3Array([Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())]))
			if randi() % 2 == 1:
				q_String = String( PoolColorArray([Color(randf(),randf(),randf(),randf())]))
			
		if randi() % 2 == 1:
			qq += str(q_String.begins_with( Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(q_String.bigrams())
		if randi() % 2 == 1:
			qq += str(q_String.c_escape())
		if randi() % 2 == 1:
			qq += str(q_String.c_unescape())
		if randi() % 2 == 1:
			qq += str(q_String.capitalize())
		if randi() % 2 == 1:
			qq += str(q_String.casecmp_to( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.dedent())
		if randi() % 2 == 1:
			qq += str(q_String.empty())
		if randi() % 2 == 1:
			qq += str(q_String.ends_with( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.erase( Autoload.get_randi(),Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(q_String.find( Autoload.get_string(), Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.find_last( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.findn( Autoload.get_string(), Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(q_String.format( Autoload.get_string(), Autoload.get_string() ))
			
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
			qq += str(q_String.insert( Autoload.get_randi(), Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.is_abs_path())
		if randi() % 2 == 1:
			qq += str(q_String.is_rel_path())
		if randi() % 2 == 1:
			qq += str(q_String.is_subsequence_of( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.is_subsequence_ofi( Autoload.get_string() ))
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
			qq += str(q_String.left( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.length())
		if randi() % 2 == 1:
			qq += str(q_String.lstrip( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.match( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.matchn( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.md5_buffer())
		if randi() % 2 == 1:
			qq += str(q_String.md5_text())
			
		if randi() % 2 == 1:
			qq += str(q_String.nocasecmp_to( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.ord_at( Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(q_String.pad_decimals( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.pad_zeros( Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(q_String.percent_decode())
		if randi() % 2 == 1:
			qq += str(q_String.percent_encode())
			
		if randi() % 2 == 1:
			qq += str(q_String.plus_file( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.replace( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.replacen( Autoload.get_string(), Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.rfind( Autoload.get_string(), Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.rfindn( Autoload.get_string(), Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(q_String.right( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.rsplit( Autoload.get_string(), bool(randi()%2), Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.rstrip( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.sha256_buffer())
		if randi() % 2 == 1:
			qq += str(q_String.sha256_text())
			
		if randi() % 2 == 1:
			qq += str(q_String.similarity( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.split( Autoload.get_string(), bool(randi()%2), Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_String.split_floats( Autoload.get_string(),bool(randi()%2) ))
			
		if randi() % 2 == 1:
			qq += str(q_String.strip_edges( bool(randi()%2),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_String.strip_escapes())
			
		if randi() % 2 == 1:
			qq += str(q_String.substr( Autoload.get_randi(),Autoload.get_randi()))
			
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
			qq += str(q_String.trim_prefix( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_String.trim_suffix( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_String.xml_escape())
		if randi() % 2 == 1:
			qq += str(q_String.xml_unescape())

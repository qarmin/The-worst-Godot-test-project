extends Node2D

var q_String: String = ""

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_String, true)


func nodeFunction(q_String: String, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_String = String(Autoload.get_bool())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_int())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_float())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_vector2())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_rect2())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_vector3())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_transform2d())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_plane())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_quat())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_aabb())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_basis())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_transform())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_color())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_nodepath(self))
			if randi() % 2 == 1:
				q_String = String(RID())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_dictionary())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_array())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedbytearray())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedint64array())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedfloat32array())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedstringarray())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedvector2array())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedvector3array())
			if randi() % 2 == 1:
				q_String = String(Autoload.get_packedcolorarray())

	if randi() % 2 == 1:
		q_String.begins_with(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.bigrams()
	if randi() % 2 == 1:
		q_String.c_escape()
	if randi() % 2 == 1:
		q_String.c_unescape()
	if randi() % 2 == 1:
		q_String.capitalize()
	if randi() % 2 == 1:
		q_String.casecmp_to(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.dedent()
	if randi() % 2 == 1:
		q_String.empty()
	if randi() % 2 == 1:
		q_String.ends_with(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.erase(Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_String.find(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_String.findn(Autoload.get_string(), Autoload.get_int())

	if randi() % 2 == 1:
		q_String.format(Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_String.get_base_dir()
	if randi() % 2 == 1:
		q_String.get_basename()
	if randi() % 2 == 1:
		q_String.get_extension()
	if randi() % 2 == 1:
		q_String.get_file()

	if randi() % 2 == 1:
		q_String.hash()
	if randi() % 2 == 1:
		q_String.hex_to_int()

	if randi() % 2 == 1:
		q_String.http_escape()
	if randi() % 2 == 1:
		q_String.http_unescape()

	if randi() % 2 == 1:
		q_String.insert(Autoload.get_int(), Autoload.get_string())

	if randi() % 2 == 1:
		q_String.is_abs_path()
	if randi() % 2 == 1:
		q_String.is_rel_path()
	if randi() % 2 == 1:
		q_String.is_subsequence_of(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.is_subsequence_ofi(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.is_valid_filename()
	if randi() % 2 == 1:
		q_String.is_valid_float()
	if randi() % 2 == 1:
		q_String.is_valid_hex_number(Autoload.get_bool())
	if randi() % 2 == 1:
		q_String.is_valid_html_color()
	if randi() % 2 == 1:
		q_String.is_valid_identifier()
	if randi() % 2 == 1:
		q_String.is_valid_integer()
	if randi() % 2 == 1:
		q_String.is_valid_ip_address()

	if randi() % 2 == 1:
		q_String.json_escape()
	if randi() % 2 == 1:
		q_String.left(Autoload.get_int())
	if randi() % 2 == 1:
		q_String.length()
	if randi() % 2 == 1:
		q_String.lstrip(Autoload.get_string())

	if randi() % 2 == 1:
		q_String.match(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.matchn(Autoload.get_string())

	if randi() % 2 == 1:
		q_String.md5_buffer()
	if randi() % 2 == 1:
		q_String.md5_text()

	if randi() % 2 == 1:
		q_String.nocasecmp_to(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.ord_at(Autoload.get_int())

	if randi() % 2 == 1:
		q_String.pad_decimals(Autoload.get_inti(100))
	if randi() % 2 == 1:
		q_String.pad_zeros(Autoload.get_inti(100))

	if randi() % 2 == 1:
		q_String.percent_decode()
	if randi() % 2 == 1:
		q_String.percent_encode()

	if randi() % 2 == 1:
		q_String.plus_file(Autoload.get_string())

	if randi() % 2 == 1:
		q_String.replace(Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_String.replacen(Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_String.rfind(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_String.rfindn(Autoload.get_string(), Autoload.get_int())

	if randi() % 2 == 1:
		q_String.right(Autoload.get_int())
	if randi() % 2 == 1:
		q_String.rsplit(Autoload.get_string(), Autoload.get_bool(), Autoload.get_int())
	if randi() % 2 == 1:
		q_String.rstrip(Autoload.get_string())

	if randi() % 2 == 1:
		q_String.sha256_buffer()
	if randi() % 2 == 1:
		q_String.sha256_text()

	if randi() % 2 == 1:
		q_String.similarity(Autoload.get_string())

	if randi() % 2 == 1:
		q_String.split(Autoload.get_string(), Autoload.get_bool(), Autoload.get_int())
	if randi() % 2 == 1:
		q_String.split_floats(Autoload.get_string(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_String.strip_edges(Autoload.get_bool(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_String.strip_escapes()

	if randi() % 2 == 1:
		q_String.substr(Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_String.to_ascii()
	if randi() % 2 == 1:
		q_String.to_float()
	if randi() % 2 == 1:
		q_String.to_int()
	if randi() % 2 == 1:
		q_String.to_lower()
	if randi() % 2 == 1:
		q_String.to_upper()
	if randi() % 2 == 1:
		q_String.to_utf8()

	if randi() % 2 == 1:
		q_String.trim_prefix(Autoload.get_string())
	if randi() % 2 == 1:
		q_String.trim_suffix(Autoload.get_string())

	if randi() % 2 == 1:
		q_String.xml_escape()
	if randi() % 2 == 1:
		q_String.xml_unescape()

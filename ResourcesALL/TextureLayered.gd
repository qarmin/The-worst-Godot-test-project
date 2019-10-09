extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		if !Autoload.RANDI:
#			pass
#
#		var q_TextureLayered : TextureLayered = TextureLayered.new()
#
#		q_TextureLayered.set_flags(randi() % 7 ) # Flags
#		q_TextureLayered._set_data({"asfasf":"asfafs"})
#
#		q_TextureLayered.create( randi()%50, randi()%50, randi()%50, randi() % Image.FORMAT_MAX, randi() % 7 ) # Flags
#
#		qq += str(q_TextureLayered.get_depth())
#		qq += str(q_TextureLayered.get_format())
#		qq += str(q_TextureLayered.get_height())
#		qq += str(q_TextureLayered.get_layer_data( randi()%50 ))
#		qq += str(q_TextureLayered.get_width())
#
#		q_TextureLayered.set_data_partial( Image.new(), randi()%50, randi()%50, randi()%50, randi()%50 )
#		q_TextureLayered.set_layer_data( Image.new(), randi()%50 )
#
#		if Autoload.WRONG_BUGS:
#			pass

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
		
#		var q_IP : IP = IP.new()
#
#		q_IP.clear_cache("asfafsqwfas")
#		q_IP.erase_resolve_item(0)
#
#		qq += str(q_IP.get_local_addresses())
#		#qq += str(q_IP.get_resolve_item_address(0))
#		#qq += str(q_IP.get_resolve_item_status(0))
#
#		#qq += str(q_IP.resolve_hostname("https://duckduckgo.com",randi() % (q_IPTYPE_ANY + 1)))
#		#qq += str(q_IP.resolve_hostname_queue_item("https://duckduckgo.com",randi() % (q_IPTYPE_ANY + 1)))
#
#		if Autoload.WRONG_BUGS:
#			pass

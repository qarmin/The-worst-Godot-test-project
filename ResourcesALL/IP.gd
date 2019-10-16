extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_IP : IP = IP.new()
#			var q_IP : IP = IP.new()
#
#			q_IP.clear_cache(Autoload.get_string())
#			q_IP.erase_resolve_item(Autoload.get_int())
#
#			Autoload.qq = str(q_IP.get_local_addresses())
#			Autoload.qq = str(q_IP.get_resolve_item_address(Autoload.get_int()))
#			Autoload.qq = str(q_IP.get_resolve_item_status(Autoload.get_int()))
#
#			Autoload.qq = str(q_IP.resolve_hostname(Autoload.get_string(),Autoload.get_int()))
#			Autoload.qq = str(q_IP.resolve_hostname_queue_item(Autoload.get_string(),Autoload.get_int()))

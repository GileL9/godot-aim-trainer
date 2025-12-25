extends Node


var score = 1001
var level = 1

func _process(delta: float) -> void:
	if (score >= 1000):
		level = level + 1
		pass

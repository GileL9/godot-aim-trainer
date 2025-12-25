extends Node2D

@onready var timer = $spawn_timer

@export var target_scene : PackedScene

var current_level = 1

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass
		
	


func _on_spawn_timer_timeout() -> void:
	var target = target_scene.instantiate()
	get_parent().add_child(target)

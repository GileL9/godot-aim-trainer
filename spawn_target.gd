extends Node2D


var current_level = 1
@export var target_scene : PackedScene
@onready var spawn_timer = $spawn_timer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spawn_timer_timeout() -> void:
	#spawn target
	var target = target_scene.instantiate()
	get_parent().add_child(target)
	print(get_parent())
	pass # Replace with function body.

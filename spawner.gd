extends Node2D

@onready var timer = $spawn_timer

@export var target_scene : PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_spawn_timer_timeout() -> void:
	var target = target_scene.instantiate()
	get_parent().add_child(target)
	print(get_parent())
	pass # Replace with function body.

extends Node2D

@onready var sprite = $Area2D/Sprite2D
@onready var timer = $Area2D/death_timer
@onready var spawn_timer = $Area2D/spawn_timer
@onready var label = $"../../background/Label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()
	sprite.scale = Vector2(2,2)
	var randomX = randi_range(64,1216)
	var randomY = randi_range(64, 656)
	self.position = Vector2(randomX,randomY)
	#print(self.position)
	pass 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer.is_stopped():
		self.queue_free()
		pass

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		keeping_score.score = keeping_score.score + 100
		self.queue_free()
	pass # Replace with function body.

extends Node2D

@onready var game_over: Control = %"Game Over"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_over.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

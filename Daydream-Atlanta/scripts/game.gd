extends Node2D

@onready var game_over: Control = %"Game Over"
@onready var you_won: Control = %"You Won"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_over.hide()
	you_won.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

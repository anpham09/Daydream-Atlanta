extends Area2D

@onready var timer: Timer = $Timer
@onready var game_over: Control = %"Game Over"

func _on_game_over():
	game_over.show()

func _on_body_entered(body: Node2D) -> void:
	print("You died")
	timer.start()
	_on_game_over()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()

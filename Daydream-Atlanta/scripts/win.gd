extends Area2D
@onready var timer: Timer = $Timer
@onready var you_won: Control = %"You Won"

func _on_won():
	you_won.show()

func _on_body_entered(body: Node2D) -> void:
	print("You won!")
	timer.start()
	_on_won()
	
	


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()

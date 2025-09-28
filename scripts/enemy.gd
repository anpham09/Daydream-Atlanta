extends Area2D

var dialog
@onready var dialog_scene = preload("res://scenes/dialog.tscn")

func show_dialog():
	if not dialog:
		dialog = dialog_scene.instantiate()
		add_sibling(dialog)
	


func _on_body_entered(body: Node2D) -> void:
	show_dialog()

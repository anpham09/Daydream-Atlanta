extends Area2D
var dialog
@onready var dialog_scene = preload("res://scenes/dialog.tscn")
@onready var canvas = get_parent().get_node("CanvasLayer")
func show_dialog():
	if not dialog:
		dialog = dialog_scene.instantiate()
		canvas.add_child(dialog)
		dialog.global_position = Vector2 (400,200)
		
		
	


func _on_body_entered(body: Node2D) -> void:
	show_dialog()

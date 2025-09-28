extends Node2D

@onready var heartContainer = $CanvasLayer/heartsContainer 
@onready var player = $Player
@onready var dialog = $Control 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heartContainer.setMaxHealth(player.maxHealth)
	heartContainer.updateHealth(player.currentHealth)
	player.HealthChange.connect(heartContainer.updateHealth)
	dialog.connect("player_take_damage", Callable(player,"take_damage"))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

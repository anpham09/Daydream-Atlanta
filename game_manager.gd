extends Node

var score = 0

@onready var score_label: Label = $ScoreLabel
@onready var score_label_2: Label = $ScoreLabel2
@onready var score_score: Label = %Score

func add_point():
	score += 1
	score_score.text = "Bricks: " + str(score) 
	score_label.text = "You collected " + str(score) + " coins."
	score_label_2.text = "You collected " + str(score) + " coins."

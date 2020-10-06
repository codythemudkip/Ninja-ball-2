extends Node

onready var HUD = $HUD/Label

func _ready():
	
	match Globals.paddleSkin:
		0:
			$player/Sprite.frame = 0
		1:
			$player/Sprite.frame = 1
		2:
			$player/Sprite.frame = 2
		3:
			$player/Sprite.frame = 3
		4:
			$player/Sprite.frame = 4
		5:
			$player/Sprite.frame = 5
		6:
			$player/Sprite.frame = 6
		7:
			$player/Sprite.frame = 7

func _process(delta):
	HUD.text = "Score: " + str(Globals.score)

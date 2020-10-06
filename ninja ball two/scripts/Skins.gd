extends Node2D

var paddleSkins = 0
var selectedSkin = 0

func _ready():
	$PaddleLeft.rect_scale.y *= 1
	match Globals.data["unlockLevelPaddle"]:
		0:
			pass
		1:
			paddleSkins = 1
		2:
			paddleSkins = 2
		3:
			paddleSkins = 3
		4:
			paddleSkins = 4
		5:
			paddleSkins = 5
		6:
			paddleSkins = 6
		7:
			paddleSkins = 7

func _process(delta):
	$PaddleSkin/pSkin.text = str(selectedSkin)
	match selectedSkin:
		0:
			$skinName.text = "$$default"
		1:
			$skinName.text = "$$laugh"
		2:
			$skinName.text = "$$esnaw"
		3:
			$skinName.text = "$$Red Cow"
		4:
			$skinName.text = "$$The Blev"
		5:
			$skinName.text = "$$Classic"
		6:
			$skinName.text = "$$Not Enough Movement"
		7:
			$skinName.text = "$$Trafis"

func _on_PaddleRight_pressed():
	selectedSkin += 1
	
	if selectedSkin < 0:
		selectedSkin = 0
	if selectedSkin > 7:
		selectedSkin = 7
		
	$PaddleSkin.frame = selectedSkin


func _on_apply_pressed():
	match selectedSkin:
		0:
			Globals.paddleSkin = 0
			Globals.data["paddleSkin"] = "default"
		1:
			Globals.paddleSkin = 1
			Globals.data["paddleSkin"] = "laugh"
		2:
			Globals.paddleSkin = 2
			Globals.data["paddleSkin"] = "esnaw"
		3:
			Globals.paddleSkin = 3
			Globals.data["paddleSkin"] = "Red Cow"
		4:
			Globals.paddleSkin = 4
			Globals.data["paddleSkin"] = "The Blev"
		5:
			Globals.paddleSkin = 5
			Globals.data["paddleSkin"] = "Classic"
		6:
			Globals.paddleSkin = 6
			Globals.data["paddleSkin"] = "Not Enough Movement"
		7:
			Globals.paddleSkin = 7
			Globals.data["paddleSkin"] = "Trafis"


func _on_Back_pressed():
	Globals.changeScene("res://scenes/MainMenu.tscn")


func _on_PaddleLeft_pressed():
	selectedSkin -= 1
	
	if selectedSkin < 0:
		selectedSkin = 0
	if selectedSkin > 7:
		selectedSkin = 7
		
	$PaddleSkin.frame = selectedSkin

extends Node

var score = 0
var highscore = 0
var save_path = "user://PMgame.dat"
var paddleSkin = 0
var ballSkin = 0

var data = {
	"highscore" : highscore,
	"JojoReference" : "I reject my humanity Jojo",
	"ballSkin" : "default",
	"paddleSkin" : "default",
	"unlockLevelPaddle" : 0,
	"unlockLevelBall" : 0,
}


func changeScene(path):
	assert(get_tree().change_scene(path) == OK)

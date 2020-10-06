extends KinematicBody2D

var initial_ball_speed = 300
var speed_cummulator = 50
var ball_speed = initial_ball_speed

var hitCounter = 0
var max_hitCounter = 12
var direction = Vector2()

func _ready():
	set_start_direction()

func set_start_direction():
	var random_x = 0
	
	if randi()%10 < 5:
		random_x = 1
	else:
		random_x = -1
		
	direction = Vector2(random_x, rand_range(-1, 1))
	direction = direction.normalized() * ball_speed
	
func _physics_process(delta):
	var collision = move_and_collide(direction * delta)
	if collision:
		direction = direction.bounce(collision.normal)
	
		if collision.collider.is_in_group("rackets"):
			direction = direction.normalized() * (ball_speed + hitCounter + speed_cummulator)
			
			if hitCounter < max_hitCounter:
				hitCounter += 1
				
			ball_speed += speed_cummulator
			
		if collision.collider.is_in_group("score"):
			Globals.score += 1

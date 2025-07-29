extends CharacterBody2D
var SPEED = 30.0
var player = null
var player_chase = false

func _physics_process(delta):
	if player_chase:
		position += (player.position - position)/SPEED
		move_and_collide(Vector2(0,0))
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	move_and_slide()


func _on_detection_area_body_entered(body):
	player = body
	player_chase = true
	print("entered")

func _on_detection_area_body_exited(body):
	player = null
	player_chase = false
	print("exited")

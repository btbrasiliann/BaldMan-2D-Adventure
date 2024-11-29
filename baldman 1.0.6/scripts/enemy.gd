extends CharacterBody2D


const SPEED = 700.0
const JUMP_VELOCITY = -400.0

@onready var wall_detector := $wall_detector as RayCast2D
var direction := -1
@onready var enemy := $enemy as AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if wall_detector.is_colliding():
		direction  *= -1
		wall_detector.scale.x *= -1

	if direction == 1:
		enemy.flip_h = true
	else:
		enemy.flip_h = false
	velocity.x = direction * SPEED * delta 
	

	move_and_slide()

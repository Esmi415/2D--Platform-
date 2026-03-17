extends CharacterBody2D

@export var move_speed : float = 100
@export var acceleration : float = 50
@export var braking : float = 20 
@export var gravity : float = 500
@export var jump_force : float = 200

var move_input : float 

func _physics_process(delta):
	# gravity
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# get the move input
	move_input = Input.get_axis("move_left","move_right")
	
	# movement
	velocity.x = move_input * move_speed
	
	# jumping
	
	
	move_and_slide()
	
	
	
	

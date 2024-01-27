extends CharacterBody2D

@export var speed = 400 # How fast the player will move (pixels/sec).


func _ready():
	pass

func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 200
	if Input.is_action_pressed("move_left"):
		velocity.x -= 200
	if Input.is_action_pressed("down"):
		velocity.y += 200
	if Input.is_action_pressed("up"):
		velocity.y -= 200
	
	
	position += velocity * delta


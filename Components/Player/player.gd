class_name Player extends CharacterBody2D

@export var speed := 100.0
@export var gravity := 4000.0
@export var jump_impulse := 1800.0

@onready var animation_player = $AnimationPlayer
@onready var animated_sprite2d = $AnimatedSprite2D

func _process(delta):
	print(animated_sprite2d.animation, ". is playing ", animated_sprite2d.is_playing())

#extends CharacterBody2D
#
#
#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0
#
#
#func _physics_process(delta):
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()

extends CharacterBody2D

const SPEED = 300.0

@onready var rotating = $Rotating

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	pass

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("left", "right", "up", "down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	move_and_slide()

func _input(event):
	if event.is_action_pressed("up"):
		rotating.rotation_degrees = 270
	elif event.is_action_pressed("right"):
		rotating.rotation_degrees = 0
	elif event.is_action_pressed("down"):
		rotating.rotation_degrees = 90
	elif event.is_action_pressed("left"):
		rotating.rotation_degrees = 180

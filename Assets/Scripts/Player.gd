extends CharacterBody2D

const SPEED = 300.0

enum COLORS {R, B, Y}

@export var current_hg_color : COLORS;

@onready var rotating = $Rotating

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	pass

func _process(delta):
	pass

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
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

func hg_pickup(col):
	current_hg_color = col
	$Rotating/Flashlight/PointLight2D.energy = 1.45
	if current_hg_color == COLORS.R:
		$Rotating/Flashlight/PointLight2D.color = Color.hex(0xff6772ff)
	if current_hg_color == COLORS.B:
		$Rotating/Flashlight/PointLight2D.color = Color.hex(0x54a3ffff)
	if current_hg_color == COLORS.Y:
		$Rotating/Flashlight/PointLight2D.color = Color.hex(0xfff660ff)

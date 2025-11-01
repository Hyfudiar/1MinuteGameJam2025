extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera1.make_current()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_1_body_entered(body):
	$Camera1.make_current()


func _on_area_2_body_entered(body):
	$Camera2.make_current()

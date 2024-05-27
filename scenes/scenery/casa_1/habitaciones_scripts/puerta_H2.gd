extends StaticBody2D


var entered = false

func _on_area_2d_body_entered(body: CharacterBody2D):
	entered = true


func _on_area_2d_body_exited(body):
	entered = false

func _physics_process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scenes/scenery/casa_1/habitaciones/habitacion_2.tscn")

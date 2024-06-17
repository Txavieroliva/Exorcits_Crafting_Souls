extends StaticBody2D

var entered = false
var player = null



func _on_area_2d_body_entered(body: CharacterBody2D):
	player = JugadorGlobal.obtener_ref_jugador()
	
	if player != null:
		entered = true
		Global.from_level = get_parent().name

func _on_area_2d_body_exited(body):
	entered = false

func _physics_process(delta):
	if player && entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scenes/scenery/casa_1/habitaciones/" + self.name + ".tscn")

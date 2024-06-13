extends CharacterBody2D

var SPEED = 150.0
var player = null

func _ready():
	player = JugadorGlobal.obtener_ref_jugador()

func _physics_process(delta):
	follow_player(delta)


#func _on_area_2d_body_entered(body):
	#player = JugadorGlobal.obtener_ref_jugador()
	#body = player
#
#
#func _on_area_2d_body_exited(body):
	#player = null
	#body = player

func follow_player(delta):
	if player != null:
		velocity = global_position.direction_to(player.global_position) * SPEED
		move_and_slide()

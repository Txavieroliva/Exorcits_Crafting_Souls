extends CharacterBody2D

const SPEED = 300.0
var tengo_llave = false
var cantidad_de_items = 0
var cordura = 5.0

func _ready():
	JugadorGlobal.set_ref_jugador(self)
 
func _physics_process(delta):

	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var direction_y = Input.get_axis("ui_up", "ui_down")
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

func recibir_danio(danio):
	cordura -= danio
	print(cordura)

func agarrar_item(item_agarrado):
#consigue referencia de la escena del ancestro
				#var item = preload("res://scenes/scenery/items/" + item_agarrado + ".tscn") 
#Instancia la escena como nodo hijo de un contenedor de items.
			#item = item.instantiate()
			#var espacio_a_ocupar = "contenedor_de_item" + cantidad_de_items
			#espacio_a_ocupar.add_child(item)
	pass

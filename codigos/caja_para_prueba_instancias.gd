extends Spatial

export(PackedScene) var cubo
var instanciaCubo
var contador = 1
var initial_pos

func _ready():
	initial_pos = $posicion_instancia_cubos.translation

# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		get_tree().paused = true
	$fps.text = "FPS: " + str(Engine.get_frames_per_second()) #muestra los frames por segundos

func _on_Timer_timeout():
	$cantidad_de_cubos.text = "cantidad de cubos = " + str(contador)
	instanciaCubo = cubo.instance()
	instanciaCubo.translation = initial_pos
	add_child(instanciaCubo)
	contador += 1

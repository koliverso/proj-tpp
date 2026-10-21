extends CharacterBody3D
#Variáveis
var acceleration = 5;
var inputs = Vector3.ZERO;

#Ready
func _ready() -> void:
	pass

#Update
func _process(delta: float) -> void:
	pass

#Physics
func _physics_process(delta: float) -> void:
	#Movimentação
	inputs = Input.get_vector("ui_right","ui_left","ui_down","ui_up");
	if inputs != Vector2.ZERO:
		velocity = Vector3(inputs.x * acceleration, 0, inputs.y * acceleration);
	else:
		velocity = Vector3(inputs.x * acceleration, 0, inputs.y * acceleration);
	move_and_slide()
	pass

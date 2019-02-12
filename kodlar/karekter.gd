extends KinematicBody2D

const HIZ=200
var hizV=Vector2(0,0)

func _ready():
	$isik.enabled=false
	$CollisionShape2D.disabled=true
	pass

func _physics_process(delta):
	if degiskenler.karektereBabaCarpti:
		move_and_slide(Vector2(20,200))
		degiskenler.karektereBabaCarpti=false
	
	degiskenler.karekterPos = global_position	
	var farePos = get_global_mouse_position()
	look_at(farePos)
	hizV=Vector2(0,0)
	if Input.is_action_pressed("yukari_hareket"):
		hizV.y = -HIZ
	if Input.is_action_pressed("asagi_hareket"):
		hizV.y = HIZ
	if Input.is_action_pressed("saga_hareket"):
		hizV.x = HIZ
	if Input.is_action_pressed("sola_hareket"):
		hizV.x = -HIZ
		
	move_and_slide(hizV)
	pass

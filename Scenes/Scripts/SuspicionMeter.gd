extends TextureProgress

var suspicion: float = 0

export var suspicion_step: float = 1.0 # How much suspicion goes up every time we're seen
export var suspicion_dropoff: float = 0.5 # How fast suspicion falls

func _physics_process(delta):
	update_suspicion()


func player_seen() -> void:
	suspicion += suspicion_step


func end_game() -> void:
	get_tree().change_scene(Global.GAME_OVER_SCENE)


func update_suspicion() -> void:
	if suspicion == value:
		return
	
	suspicion -= suspicion_dropoff
	
	if suspicion > 65:
		suspicion_step = suspicion_step * 2
	else:
		suspicion_step = suspicion_step
	
	if suspicion > max_value:
		suspicion = 100
	elif suspicion < 0:
		suspicion = 0
	
	if suspicion >= max_value:
		end_game()
	
	value = suspicion

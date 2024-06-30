
#Variables
var time = 0
var day = 0
var money = 0

#triggers
var player_spawned = false

#spawn player
func spawn_player(scene):
	#vars
	var hud_node = null
	var player_node = null	
	var camera_node = null

	if (player_spawned): return
	
	#Create player
	var player = load("temp")#player here
	player_node = player.instantiate()
	player_spawned = true
	var pos_x = 0
	var pos_y = 0
	player_node.position = Vector2(pos_x, pos_y)
	print("player created")
	
	#Create Camera
	var cam = Camera2D.new()
	#cam.make_current()
	cam.zoom = Vector2(1, 1)
	cam.position_smoothing_enabled = true
	#pass vars
		#any enitiy vars needed from global
	#add to scene
	scene.add_child(player_node)
	player_node.add_child(cam)
	
	return player_node

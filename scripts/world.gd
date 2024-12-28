extends Node2D

@onready var player: Player = $Player
@onready var timer_spawn_enemy: Timer = $TimerSpawnEnemy
const ENEMY = preload("res://escenas/enemigo.tscn")
var time_second_spawn_enemy := 5#AQUI SE CAMBIA CADA CUANTOS SEGUNDOS APARECE UN ENEMIGO

func _ready() -> void:
	timer_spawn_enemy.timeout.connect(spawn_enemy)
	timer_spawn_enemy.wait_time = time_second_spawn_enemy
	timer_spawn_enemy.start()
	
func spawn_enemy():
	var enemy = ENEMY.instantiate()
	var random_angle: float = randf() * PI * 2 #genera una cordenada random
	var spawn_distance: float = randf_range(270, 300) #la distancia del radio en el que aparecen los enemigos
	var spawn_offset: Vector2 = Vector2(cos(random_angle), sin(random_angle)) * spawn_distance 
	#hace q los enemigos aparezcan de manera random fuera del radio de spawn
	
	enemy.position = spawn_offset + player.position
	
	add_child(enemy) 

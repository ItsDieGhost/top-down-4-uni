class_name Enemy extends CharacterBody2D

var mode_speed := 50
var attack_damage := 10
var is_attack := false

@onready var sprite_animation: AnimatedSprite2D = $AnimatedSprite2D
@onready var player: Player = $"../Player"

func _physics_process(delta: float) -> void:
	if !is_attack and player:
		sprite_animation.play("run")
		
		var move_direction = (player.position - position).normalized()
		if move_direction:
			velocity = move_direction * mode_speed
			if move_direction.x != 0:
				sprite_animation.flip_h = move_direction.x < 0
			
			
			move_and_slide()

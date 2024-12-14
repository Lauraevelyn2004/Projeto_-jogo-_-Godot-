extends Area2D

var fase_transicao := false  # Variável para controlar a transição de fase

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	var cena = get_tree().current_scene
	
	# Verifica se a cena é "Fase01" e o jogador passou para a próxima fase
	if cena.name == "Fase01" and body.name == "Jogador" and not fase_transicao:
		fase_transicao = true  # Marcar que a transição está em andamento
		get_tree().change_scene_to_file("res://levels/fase_02.tscn")  # Muda para a Fase 02

	# Verifica se a cena é "Fase02" e o jogador passou para a Fase 01
	elif cena.name == "Fase02" and body.name == "Jogador" and not fase_transicao:
		fase_transicao = true  # Marcar que a transição está em andamento
		get_tree().change_scene_to_file("res://levels/fase_01.tscn")  # Muda para a Fase 01

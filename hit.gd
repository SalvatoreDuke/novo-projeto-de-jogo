extends Node

var deck = []  # Lista que atua como uma pilha
var suits = ["♠", "♥", "♦", "♣"]
var values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

# Função para criar o baralho
func create_deck():
	deck.clear()
	for suit in suits:
		for value in values:
			deck.append({"value": value, "suit": suit})
	shuffle_deck()

# Função para embaralhar o baralho
func shuffle_deck():
	deck.shuffle()

# Retirar (pop) uma carta da pilha
func draw_card():
	if deck.size() > 0:
		return deck.pop_back()  # Retira a última carta
	else:
		return null

# Adicionar (push) uma carta na pilha (ex.: para cartas descartadas)
func return_card(card):
	deck.append(card)

# Obter o número de cartas restantes no baralho
func remaining_cards():
	return deck.size()

# Verificar se o baralho está vazio
func is_empty():
	return deck.size() == 0
	

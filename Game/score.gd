extends Label

var Score1 = 0
var Score2 = 0

func _process(delta: float) -> void:
	if Score1 != get_parent().ScoreP1:
		Score1 = get_parent().ScoreP1
		set_text(str(Score1) + "      " + str(Score2))
	elif Score2 != get_parent().ScoreP2:
		Score2 = get_parent().ScoreP2
		set_text(str(Score1) + "      " + str(Score2))

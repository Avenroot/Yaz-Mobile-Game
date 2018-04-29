// 5 dice are returned in DiceSet
public class DiceSet {

	var dice1 = yazDice()
	var dice2 = yazDice()
	var dice3 = yazDice()
	var dice4 = yazDice()
	var dice5 = yazDice()



	func Roll() {

		dice1.Roll()
		dice2.Roll()
		dice3.Roll()
		dice4.Roll()
		dice5.Roll()
	}

	func HowManyOnes() -> Int {
		var r = 0

		if dice1.Value == 1 {r = r+1}
		if dice2.Value == 1 {r = r+1}
		if dice3.Value == 1 {r = r+1}
		if dice4.Value == 1 {r = r+1}
		if dice5.Value == 1 {r = r+1}

		return r
	}

	func HowManyTwos() -> Int {
		var r = 0

		if dice1.Value == 2 {r = r+1}
		if dice2.Value == 2 {r = r+1}
		if dice3.Value == 2 {r = r+1}
		if dice4.Value == 2 {r = r+1}
		if dice5.Value == 2 {r = r+1}

		return r
	}

	func HowManyThrees() -> Int {
		var r = 0

		if dice1.Value == 3 {r = r+1}
		if dice2.Value == 3 {r = r+1}
		if dice3.Value == 3 {r = r+1}
		if dice4.Value == 3 {r = r+1}
		if dice5.Value == 3 {r = r+1}

		return r
	}

	func HowManyFours() -> Int {
		var r = 0

		if dice1.Value == 4 {r = r+1}
		if dice2.Value == 4 {r = r+1}
		if dice3.Value == 4 {r = r+1}
		if dice4.Value == 4 {r = r+1}
		if dice5.Value == 4 {r = r+1}

		return r
	}

	func HowManyFives() -> Int {
		var r = 0

		if dice1.Value == 5 {r = r+1}
		if dice2.Value == 5 {r = r+1}
		if dice3.Value == 5 {r = r+1}
		if dice4.Value == 5 {r = r+1}
		if dice5.Value == 5 {r = r+1}

		return r
	}

	func HowManySixes() -> Int {
		var r = 0

		if dice1.Value == 6 {r = r+1}
		if dice2.Value == 6 {r = r+1}
		if dice3.Value == 6 {r = r+1}
		if dice4.Value == 6 {r = r+1}
		if dice5.Value == 6 {r = r+1}

		return r
	}

	func IsTwoOfSameKind() -> DiceResults {

		let r = DiceResults()

		// Handles how many ones
		if HowManyOnes() == 2 {
			r.Value1 = 1
		}

		// Handles how many twos
		if HowManyTwos() == 2 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 2
			} else {
				r.Value1 = 2
			}
		}

		// Handles how many threes
		if HowManyThrees() == 2 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 3
			} else {
				r.Value1 = 3
			}
		}

		// Handles how many fours
		if HowManyFours() == 2 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 4
			} else {
				r.Value1 = 4
			}
		}

		// Handles how many fives
		if HowManyFives() == 2 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 5
			} else {
				r.Value1 = 5
			}
		}

		// Handles how many sixes
		if HowManySixes() == 2 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 6
			} else {
				r.Value1 = 6
			}
		}

		return r
	}

	func IsThreeOfSameKind() -> DiceResults {

		let r = DiceResults()

		// Handles how many ones
		if HowManyOnes() == 3 {
			r.TrueFalse = true
			r.Value1 = 1
		}

		// Handles how many twos
		if HowManyTwos() == 3 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 2
			} else {
				r.Value1 = 2
			}
		}

		// Handles how may threes
		if HowManyThrees() == 3 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 3
			} else {
				r.Value1 = 3
			}
		}

		// Handles how many fours
		if HowManyFours() == 3 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 4
			} else {
				r.Value1 = 4
			}
		}

		// Handles how many fives
		if HowManyFives() == 3 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 5
			} else {
				r.Value1 = 5
			}
		}

		// Handles how many sixes
		if HowManySixes() == 3 {
			r.TrueFalse = true

			if r.Value1 > 0 {
				r.Value2 = 6
			} else {
				r.Value1 = 6
			}
		}

		return r

	}
}
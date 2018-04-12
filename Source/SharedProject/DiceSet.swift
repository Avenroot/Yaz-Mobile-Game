// 5 dice are returned in DiceSet
public class DiceSet {

	var dice1Value = 0
	var dice2Value = 0
	var dice3Value = 0
	var dice4Value = 0
	var dice5Value = 0

	func HowManyOnes() -> Int {
		var r = 0

		if dice1Value == 1 {r = r+1}
		if dice2Value == 1 {r = r+1}
		if dice3Value == 1 {r = r+1}
		if dice4Value == 1 {r = r+1}
		if dice5Value == 1 {r = r+1}

		return r
	}

	func HowManyTwos() -> Int {
		var r = 0

		if dice1Value == 2 {r = r+1}
		if dice2Value == 2 {r = r+1}
		if dice3Value == 2 {r = r+1}
		if dice4Value == 2 {r = r+1}
		if dice5Value == 2 {r = r+1}

		return r
	}

	func HowManyThrees() -> Int {
		var r = 0

		if dice1Value == 3 {r = r+1}
		if dice2Value == 3 {r = r+1}
		if dice3Value == 3 {r = r+1}
		if dice4Value == 3 {r = r+1}
		if dice5Value == 3 {r = r+1}

		return r
	}

	func HowManyFours() -> Int {
		var r = 0

		if dice1Value == 4 {r = r+1}
		if dice2Value == 4 {r = r+1}
		if dice3Value == 4 {r = r+1}
		if dice4Value == 4 {r = r+1}
		if dice5Value == 4 {r = r+1}

		return r
	}

	func HowManyFives() -> Int {
		var r = 0

		if dice1Value == 5 {r = r+1}
		if dice2Value == 5 {r = r+1}
		if dice3Value == 5 {r = r+1}
		if dice4Value == 5 {r = r+1}
		if dice5Value == 5 {r = r+1}

		return r
	}

	func HowManySixes() -> Int {
		var r = 0

		if dice1Value == 6 {r = r+1}
		if dice2Value == 6 {r = r+1}
		if dice3Value == 6 {r = r+1}
		if dice4Value == 6 {r = r+1}
		if dice5Value == 6 {r = r+1}

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

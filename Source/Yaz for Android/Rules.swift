
public class DiceResults {
	var TrueFalse = false
	var Value1 = 0
	var Value2 = 0
}

public class DiceSet {
	var Value1 = 0
	var Value2 = 0
	var Value3 = 0
	var Value4 = 0
	var Value5 = 0
	var Value6 = 0

	func HowManyOnes() -> Int {
		var r = 0

		if Value1 == 1 {r = r+1}
		if Value2 == 1 {r = r+1}
		if Value3 == 1 {r = r+1}
		if Value4 == 1 {r = r+1}
		if Value5 == 1 {r = r+1}
		if Value6 == 1 {r = r+1}

		return r
	}

	func HowManyTwos() -> Int {
		var r = 0

		if Value1 == 2 {r = r+1}
		if Value2 == 2 {r = r+1}
		if Value3 == 2 {r = r+1}
		if Value4 == 2 {r = r+1}
		if Value5 == 2 {r = r+1}
		if Value6 == 2 {r = r+1}

		return r
	}

	func HowManyThrees() -> Int {
		var r = 0

		if Value1 == 3 {r = r+1}
		if Value2 == 3 {r = r+1}
		if Value3 == 3 {r = r+1}
		if Value4 == 3 {r = r+1}
		if Value5 == 3 {r = r+1}
		if Value6 == 3 {r = r+1}

		return r
	}

	func HowManyFours() -> Int {
		var r = 0

		if Value1 == 4 {r = r+1}
		if Value2 == 4 {r = r+1}
		if Value3 == 4 {r = r+1}
		if Value4 == 4 {r = r+1}
		if Value5 == 4 {r = r+1}
		if Value6 == 4 {r = r+1}

		return r
	}

	func HowManyFives() -> Int {
		var r = 0

		if Value1 == 5 {r = r+1}
		if Value2 == 5 {r = r+1}
		if Value3 == 5 {r = r+1}
		if Value4 == 5 {r = r+1}
		if Value5 == 5 {r = r+1}
		if Value6 == 5 {r = r+1}

		return r
	}

	func HowManySixes() -> Int {
		var r = 0

		if Value1 == 6 {r = r+1}
		if Value2 == 6 {r = r+1}
		if Value3 == 6 {r = r+1}
		if Value4 == 6 {r = r+1}
		if Value5 == 6 {r = r+1}
		if Value6 == 6 {r = r+1}

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

public class Rules {


	// Small Straight
	func IsSmallStraight(const Dice: DiceSet) -> Boolean {
		var r = false

		// Dice 1-4
		if (Dice.HowManyOnes() == 1) && (Dice.HowManyTwos() == 1) && (Dice.HowManyThrees() == 1) &&
			(Dice.HowManyFours() == 1) {

				r = true
		}

		// Dice 2-5
		if (Dice.HowManyTwos() == 1) && (Dice.HowManyThrees() == 1) && (Dice.HowManyFours() == 1) &&
			(Dice.HowManyFives() == 1) {

				r = true
		}

		// Dice 3-6
		if (Dice.HowManyThrees() == 1) && (Dice.HowManyFours() == 1) && (Dice.HowManyFives() == 1) &&
			(Dice.HowManySixes() == 1) {

				r = true
		}

		return r
	}


	// Large Straight
	func IsLargeStraight(const Dice: DiceSet) -> Boolean {
		var r = false

		// Dice 1-5
		if (Dice.HowManyOnes() == 1) && (Dice.HowManyTwos() == 1) && (Dice.HowManyThrees() == 1) &&
			(Dice.HowManyFours() == 1) && (Dice.HowManyFives() == 1) {

				r = true
		}

		// Dice 2-6
		if (Dice.HowManyTwos() == 1) && (Dice.HowManyThrees() == 1) && (Dice.HowManyFours() == 1) &&
			(Dice.HowManyFives() == 1) && (Dice.HowManySixes() == 1) {

				r = true
		}

		return r
	}

	// Full House
	func IsFullHouse(const Dice: DiceSet) -> Boolean {
		var r = false

		if (Dice.IsTwoOfSameKind().TrueFalse == true) && (Dice.IsThreeOfSameKind().TrueFalse == true) {
				r = true
		}

		return r
	}


	// 4 of a Kind
	func IsFourOfKind(const Dice: DiceSet) -> Boolean {
	  var r = false

	  if Dice.HowManyOnes() >= 4   {r = true}
	  if Dice.HowManyTwos() >= 4   {r = true}
	  if Dice.HowManyThrees() >= 4 {r = true}
	  if Dice.HowManyFours() >= 4  {r = true}
	  if Dice.HowManyFives() >= 4  {r = true}
	  if Dice.HowManySixes() >= 4  {r = true}

	  return r
	}

	// 3 of a Kind
	func IsThreeOfKind(const Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyOnes() >= 3   {r = true}
		if Dice.HowManyTwos() >= 3   {r = true}
		if Dice.HowManyThrees() >= 3 {r = true}
		if Dice.HowManyFours() >= 3  {r = true}
		if Dice.HowManyFives() >= 3  {r = true}
		if Dice.HowManySixes() >= 3  {r = true}

		return r
	}

	// 5 of a Kind
	func IsYaz(const Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyOnes() == 5 {r = true}
		if Dice.HowManyTwos() == 5 {r = true}
		if Dice.HowManyThrees() == 5 {r = true}
		if Dice.HowManyFours() == 5 {r = true}
		if Dice.HowManyFives() == 5 {r = true}
		if Dice.HowManySixes() == 5 {r = true}

		return r
	}

	// Get Chance total
	func GetChanceTotal(const Dice: DiceSet) -> Int {

		var r = Dice.Value1 + Dice.Value2 + Dice.Value3 + Dice.Value4 + Dice.Value5 + Dice.Value6

		return r

	}
}
public class Rules {

	let fullHouseValue = 25
	let smallStraightValue = 30
	let largeStraightValue = 40
	let yazValue = 50
	let upperBonusValue = 35

	// Ones
	func IsOnes(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyOnes() > 0 {
			r = true
		}

		return r
	}

	// Twos
	func IsTwos(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyTwos() > 0 {
			r = true
		}

		return r
	}

	// Threes
	func IsThrees(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyThrees() > 0 {
			r = true
		}

		return r
	}

	// Fours
	func IsFours(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyFours() > 0 {
			r = true
		}

		return r
	}

	// Fives
	func IsFives(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyFives() > 0 {
			r = true
		}

		return r
	}

	// Sixes
	func IsSixes(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManySixes() > 0 {
			r = true
		}

		return r
	}

	// Small Straight
	func IsSmallStraight(diceSet: DiceSet) -> Boolean {
		var r = false

		// Dice 1-4
		if (diceSet.HowManyOnes() >= 1) && (diceSet.HowManyTwos() >= 1) && (diceSet.HowManyThrees() >= 1) &&
			(diceSet.HowManyFours() >= 1) {

				r = true
		}

		// Dice 2-5
		if (diceSet.HowManyTwos() >= 1) && (diceSet.HowManyThrees() >= 1) && (diceSet.HowManyFours() >= 1) &&
			(diceSet.HowManyFives() >= 1) {

				r = true
		}

		// Dice 3-6
		if (diceSet.HowManyThrees() >= 1) && (diceSet.HowManyFours() >= 1) && (diceSet.HowManyFives() >= 1) &&
			(diceSet.HowManySixes() >= 1) {

				r = true
		}

		return r
	}


	// Large Straight
	func IsLargeStraight(diceSet: DiceSet) -> Boolean {
		var r = false

		// Dice 1-5
		if (diceSet.HowManyOnes() == 1) && (diceSet.HowManyTwos() == 1) && (diceSet.HowManyThrees() == 1) &&
			(diceSet.HowManyFours() == 1) && (diceSet.HowManyFives() == 1) {

				r = true
		}

		// Dice 2-6
		if (diceSet.HowManyTwos() == 1) && (diceSet.HowManyThrees() == 1) && (diceSet.HowManyFours() == 1) &&
			(diceSet.HowManyFives() == 1) && (diceSet.HowManySixes() == 1) {

				r = true
		}

		return r
	}

	// Full House
	func IsFullHouse(diceSet: DiceSet) -> Boolean {
		var r = false

		if (diceSet.IsTwoOfSameKind().TrueFalse == true) && (diceSet.IsThreeOfSameKind().TrueFalse == true) {
				r = true
		}

		return r
	}


	// 4 of a Kind
	func IsFourOfKind(diceSet: DiceSet) -> Boolean {
	  var r = false

	  if diceSet.HowManyOnes() >= 4   {r = true}
	  if diceSet.HowManyTwos() >= 4   {r = true}
	  if diceSet.HowManyThrees() >= 4 {r = true}
	  if diceSet.HowManyFours() >= 4  {r = true}
	  if diceSet.HowManyFives() >= 4  {r = true}
	  if diceSet.HowManySixes() >= 4  {r = true}

	  return r
	}

	// 3 of a Kind
	func IsThreeOfKind(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyOnes() >= 3   {r = true}
		if diceSet.HowManyTwos() >= 3   {r = true}
		if diceSet.HowManyThrees() >= 3 {r = true}
		if diceSet.HowManyFours() >= 3  {r = true}
		if diceSet.HowManyFives() >= 3  {r = true}
		if diceSet.HowManySixes() >= 3  {r = true}

		return r
	}

	// 5 of a Kind
	func IsYaz(diceSet: DiceSet) -> Boolean {
		var r = false

		if diceSet.HowManyOnes() == 5 {r = true}
		if diceSet.HowManyTwos() == 5 {r = true}
		if diceSet.HowManyThrees() == 5 {r = true}
		if diceSet.HowManyFours() == 5 {r = true}
		if diceSet.HowManyFives() == 5 {r = true}
		if diceSet.HowManySixes() == 5 {r = true}

		return r
	}

	// Calculate all values
	func calcAllValues(diceSet: DiceSet) -> Int {
		var r = 0

		r = diceSet.dice1.Value + diceSet.dice2.Value + diceSet.dice3.Value + diceSet.dice4.Value + diceSet.dice5.Value

		return r
	}

	// Calculate Ones
	func CalcOnes(diceSet: DiceSet) -> Int {
		var r = 0

		if diceSet.dice1.Value == 1 {r = r + 1}
		if diceSet.dice2.Value == 1 {r = r + 1}
		if diceSet.dice3.Value == 1 {r = r + 1}
		if diceSet.dice4.Value == 1 {r = r + 1}
		if diceSet.dice5.Value == 1 {r = r + 1}

		return r
	}

	// Calculate Twos
	func CalcTwos(diceSet: DiceSet) -> Int {
		var r = 0

		if diceSet.dice1.Value == 2 {r = r + 2}
		if diceSet.dice2.Value == 2 {r = r + 2}
		if diceSet.dice3.Value == 2 {r = r + 2}
		if diceSet.dice4.Value == 2 {r = r + 2}
		if diceSet.dice5.Value == 2 {r = r + 2}

		return r
	}

	// Calculate Threes
	func CalcThrees(diceSet: DiceSet) -> Int {
		var r = 0

		if diceSet.dice1.Value == 3 {r = r + 3}
		if diceSet.dice2.Value == 3 {r = r + 3}
		if diceSet.dice3.Value == 3 {r = r + 3}
		if diceSet.dice4.Value == 3 {r = r + 3}
		if diceSet.dice5.Value == 3 {r = r + 3}

		return r
	}

	// Calculate Fours
	func CalcFours(diceSet: DiceSet) -> Int {
		var r = 0

		if diceSet.dice1.Value == 4 {r = r + 4}
		if diceSet.dice2.Value == 4 {r = r + 4}
		if diceSet.dice3.Value == 4 {r = r + 4}
		if diceSet.dice4.Value == 4 {r = r + 4}
		if diceSet.dice5.Value == 4 {r = r + 4}

		return r
	}

	// Calculate Fives
	func CalcFives(diceSet: DiceSet) -> Int {
		var r = 0

		if diceSet.dice1.Value == 5 {r = r + 5}
		if diceSet.dice2.Value == 5 {r = r + 5}
		if diceSet.dice3.Value == 5 {r = r + 5}
		if diceSet.dice4.Value == 5 {r = r + 5}
		if diceSet.dice5.Value == 5 {r = r + 5}

		return r
	}

	// Calculate Sixes
	func CalcSixes(diceSet: DiceSet) -> Int {
		var r = 0

		if diceSet.dice1.Value == 6 {r = r + 6}
		if diceSet.dice2.Value == 6 {r = r + 6}
		if diceSet.dice3.Value == 6 {r = r + 6}
		if diceSet.dice4.Value == 6 {r = r + 6}
		if diceSet.dice5.Value == 6 {r = r + 6}

		return r
	}

	// Calculates Three of a kind
	func CalcThreeOfKind(diceSet: DiceSet) -> Int {

		let r = calcAllValues(diceSet: diceSet)

		return r
	}

   // Calculates Four of a kind
	func CalcFourOfKind(diceSet: DiceSet) -> Int {

		let r = calcAllValues(diceSet: diceSet)

		return r
	}

	// Calculate Fullhouse
	func CalcFullHouse() -> Int {

		let r = fullHouseValue

		return r
	}

	// Calculate Small Straight
	func CalcSmallStraight() -> Int {

		let r = smallStraightValue

		return r
	}

	// Calculate Large Straight
	func CalcLargeStright() -> Int {

		let r = largeStraightValue

		return r
	}

	// Calculates Yaz
	func CalcYaz() -> Int {

		let r = yazValue

		return r
	}

	// Calculate Chance
	func CalcChance(diceSet: DiceSet) -> Int {

		var r = calcAllValues(diceSet: diceSet)

		return r
	}

}
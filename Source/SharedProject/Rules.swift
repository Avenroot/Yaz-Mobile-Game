public class Rules {

	let fullHouseValue = 25
	let smallStraightValue = 30
	let largeStraightValue = 40
	let yazValue = 50
	let upperBonusValue = 35

	// Ones
	func IsOnes(Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyOnes() > 0 {
			r = true
		}

		return r
	}

	// Twos
	func IsTwos(Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyTwos() > 0 {
			r = true
		}

		return r
	}

	// Threes
	func IsThrees(Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyThrees() > 0 {
			r = true
		}

		return r
	}

	// Fours
	func IsFours(let _ Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyFours() > 0 {
			r = true
		}

		return r
	}

	// Fives
	func IsFives(let _ Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyFives() > 0 {
			r = true
		}

		return r
	}

	// Sixes
	func IsSixes(Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManySixes() > 0 {
			r = true
		}

		return r
	}

	// Small Straight
	func IsSmallStraight(Dice: DiceSet) -> Boolean {
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
	func IsLargeStraight(Dice: DiceSet) -> Boolean {
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
	func IsFullHouse(Dice: DiceSet) -> Boolean {
		var r = false

		if (Dice.IsTwoOfSameKind().TrueFalse == true) && (Dice.IsThreeOfSameKind().TrueFalse == true) {
				r = true
		}

		return r
	}


	// 4 of a Kind
	func IsFourOfKind(Dice: DiceSet) -> Boolean {
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
	func IsThreeOfKind(Dice: DiceSet) -> Boolean {
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
	func IsYaz(Dice: DiceSet) -> Boolean {
		var r = false

		if Dice.HowManyOnes() == 5 {r = true}
		if Dice.HowManyTwos() == 5 {r = true}
		if Dice.HowManyThrees() == 5 {r = true}
		if Dice.HowManyFours() == 5 {r = true}
		if Dice.HowManyFives() == 5 {r = true}
		if Dice.HowManySixes() == 5 {r = true}

		return r
	}

	// Calculate all values
	func calcAllValues(Dice: DiceSet) -> Int {
		var r = 0

		r = Dice.dice1Value + Dice.dice2Value + Dice.dice3Value + Dice.dice4Value + Dice.dice5Value

		return r
	}

	// Calculate Ones
	func CalcOnes(Dice: DiceSet) -> Int {
		var r = 0

		if Dice.dice1Value == 1 {r = r + 1}
		if Dice.dice2Value == 1 {r = r + 1}
		if Dice.dice3Value == 1 {r = r + 1}
		if Dice.dice4Value == 1 {r = r + 1}
		if Dice.dice5Value == 1 {r = r + 1}

		return r
	}

	// Calculate Twos
	func CalcTwos(Dice: DiceSet) -> Int {
		var r = 0

		if Dice.dice1Value == 2 {r = r + 2}
		if Dice.dice2Value == 2 {r = r + 2}
		if Dice.dice3Value == 2 {r = r + 2}
		if Dice.dice4Value == 2 {r = r + 2}
		if Dice.dice5Value == 2 {r = r + 2}

		return r
	}

	// Calculate Threes
	func CalcThrees(Dice: DiceSet) -> Int {
		var r = 0

		if Dice.dice1Value == 3 {r = r + 3}
		if Dice.dice2Value == 3 {r = r + 3}
		if Dice.dice3Value == 3 {r = r + 3}
		if Dice.dice4Value == 3 {r = r + 3}
		if Dice.dice5Value == 3 {r = r + 3}

		return r
	}

	// Calculate Fours
	func CalcFours(Dice: DiceSet) -> Int {
		var r = 0

		if Dice.dice1Value == 4 {r = r + 4}
		if Dice.dice2Value == 4 {r = r + 4}
		if Dice.dice3Value == 4 {r = r + 4}
		if Dice.dice4Value == 4 {r = r + 4}
		if Dice.dice5Value == 4 {r = r + 4}

		return r
	}

	// Calculate Fives
	func CalcFives(Dice: DiceSet) -> Int {
		var r = 0

		if Dice.dice1Value == 5 {r = r + 5}
		if Dice.dice2Value == 5 {r = r + 5}
		if Dice.dice3Value == 5 {r = r + 5}
		if Dice.dice4Value == 5 {r = r + 5}
		if Dice.dice5Value == 5 {r = r + 5}

		return r
	}

	// Calculate Sixes
	func CalcSixes(Dice: DiceSet) -> Int {
		var r = 0

		if Dice.dice1Value == 6 {r = r + 6}
		if Dice.dice2Value == 6 {r = r + 6}
		if Dice.dice3Value == 6 {r = r + 6}
		if Dice.dice4Value == 6 {r = r + 6}
		if Dice.dice5Value == 6 {r = r + 6}

		return r
	}

	// Calculates Three of a kind
	func CalcThreeOfKind(Dice: DiceSet) -> Int {

		let r = calcAllValues(Dice: Dice)

		return r
	}

   // Calculates Four of a kind
	func CalcFourOfKind(Dice: DiceSet) -> Int {

		let r = calcAllValues(Dice: Dice)

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
	func CalcChance(Dice: DiceSet) -> Int {

		var r = calcAllValues(Dice: Dice)

		return r
	}

}
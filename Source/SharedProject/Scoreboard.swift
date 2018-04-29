
enum ScoreTypes {

	case Ones, Twos, Threes, Fours, Fives, Sixes, ThreeOfKind, FourOfKind, FullHouse, Yaz, SmallStraight, LargeStraight, Chance
}

public class ScoreItem {

	var Used = false
	var Value = 0

	public func Rest() {

		Used = false
		Value = 0
	}
}

public class Scoreboard {
	var ones= ScoreItem()
	var twos = ScoreItem()
	var threes = ScoreItem()
	var fours = ScoreItem()
	var fives = ScoreItem()
	var sixes = ScoreItem()
	var threeOfKind = ScoreItem()
	var fourOfKind = ScoreItem()
	var fullHouse = ScoreItem()
	var smallStraight = ScoreItem()
	var largeStraight = ScoreItem()
	var yaz = ScoreItem()
	var chance = ScoreItem()
	var upperTotal = GetUpperTotal()
	var lowerTotal = GetLowerTotal()
	var grandTotal = GetGrandTotal()

	func GetUpperTotal() -> Int {

		let rules = Rules()
		var r = ones.Value + twos.Value + threes.Value + fours.Value + fives.Value + sixes.Value

		if r >= rules.upperBonusValue {
			r = r + rules.upperBonusValue
		}

		return r
	}

	func GetLowerTotal() -> Int {

		let r = threeOfKind.Value + fourOfKind.Value + fullHouse.Value + smallStraight.Value + largeStraight.Value + yaz.Value + chance.Value

		return r
	}

	func GetGrandTotal() -> Int {

		let r = GetUpperTotal() + GetLowerTotal()

		return r
	}


	func SetScore(TypeOfScore: ScoreTypes, diceSet: DiceSet) {

		let rules = Rules()

		// need to add code to select Used
		switch TypeOfScore {
			case ScoreTypes.Ones: ones.Value = rules.CalcOnes(diceSet: diceSet)
			case ScoreTypes.Twos: twos.Value = rules.CalcTwos(diceSet: diceSet)
			case ScoreTypes.Threes: threes.Value = rules.CalcThrees(diceSet: diceSet)
			case ScoreTypes.Fours: fours.Value = rules.CalcFours(diceSet: diceSet)
			case ScoreTypes.Fives: fives.Value = rules.CalcFives(diceSet: diceSet)
			case ScoreTypes.Sixes: sixes.Value = rules.CalcSixes(diceSet: diceSet)
			case ScoreTypes.ThreeOfKind: threeOfKind.Value = rules.CalcThreeOfKind(diceSet: diceSet)
			case ScoreTypes.FourOfKind: fourOfKind.Value = rules.CalcFourOfKind(diceSet: diceSet)
			case ScoreTypes.FullHouse: fullHouse.Value = rules.CalcFullHouse()
			case ScoreTypes.SmallStraight: smallStraight.Value = rules.CalcSmallStraight()
			case ScoreTypes.LargeStraight: largeStraight.Value = rules.CalcLargeStright()
			case ScoreTypes.Yaz: yaz.Value = rules.CalcYaz()
			case ScoreTypes.Chance: chance.Value = rules.CalcChance(diceSet: diceSet)
		}
	}

	func Reset() {

		ones.Rest()
		twos.Rest()
		threes.Rest()
		fours.Rest()
		fives.Rest()
		sixes.Rest()
		threeOfKind.Rest()
		fourOfKind.Rest()
		fullHouse.Rest()
		smallStraight.Rest()
		largeStraight.Rest()
		yaz.Rest()
		chance.Rest()
		upperTotal = 0
		lowerTotal = 0
		grandTotal = 0

	}
}
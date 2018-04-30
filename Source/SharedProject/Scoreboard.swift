
enum ScoreTypes {

	case Ones, Twos, Threes, Fours, Fives, Sixes, ThreeOfKind, FourOfKind, FullHouse, Yaz, SmallStraight, LargeStraight, Chance
}

public class ScoreItem {

	var Used = false
	var Value = 0

	public func Reset() {

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

		switch TypeOfScore {
			case ScoreTypes.Ones:
				ones.Value = rules.CalcOnes(diceSet: diceSet)
				ones.Used = true
			case ScoreTypes.Twos:
				twos.Value = rules.CalcTwos(diceSet: diceSet)
				twos.Used = true
			case ScoreTypes.Threes:
				threes.Value = rules.CalcThrees(diceSet: diceSet)
				threes.Used = true
			case ScoreTypes.Fours:
				fours.Value = rules.CalcFours(diceSet: diceSet)
				fours.Used = true
			case ScoreTypes.Fives:
				fives.Value = rules.CalcFives(diceSet: diceSet)
				fives.Used = true
			case ScoreTypes.Sixes:
				sixes.Value = rules.CalcSixes(diceSet: diceSet)
				sixes.Used = true
			case ScoreTypes.ThreeOfKind:
				threeOfKind.Value = rules.CalcThreeOfKind(diceSet: diceSet)
				threeOfKind.Used = true
			case ScoreTypes.FourOfKind:
				fourOfKind.Value = rules.CalcFourOfKind(diceSet: diceSet)
				fourOfKind.Used = true
			case ScoreTypes.FullHouse:
				fullHouse.Value = rules.CalcFullHouse()
				fullHouse.Used = true
			case ScoreTypes.SmallStraight:
				smallStraight.Value = rules.CalcSmallStraight()
				smallStraight.Used = true
			case ScoreTypes.LargeStraight:
				largeStraight.Value = rules.CalcLargeStright()
				largeStraight.Used = true
			case ScoreTypes.Yaz:
				yaz.Value = rules.CalcYaz()
				yaz.Used = true
			case ScoreTypes.Chance:
				chance.Value = rules.CalcChance(diceSet: diceSet)
				chance.Used = true
		}
	}

	func Reset() {

		ones.Reset()
		twos.Reset()
		threes.Reset()
		fours.Reset()
		fives.Reset()
		sixes.Reset()
		threeOfKind.Reset()
		fourOfKind.Reset()
		fullHouse.Reset()
		smallStraight.Reset()
		largeStraight.Reset()
		yaz.Reset()
		chance.Reset()
		upperTotal = 0
		lowerTotal = 0
		grandTotal = 0

	}
}

enum ScoreTypes {

	case Ones, Twos, Threes, Fours, Fives, Sixes, ThreeOfKind, FourOfKind, FullHouse, Yaz, SmallStraight, LargeStraight, Chance
}

public class Scoreboard {
	var ones = 0
	var twos = 0
	var threes = 0
	var fours = 0
	var fives = 0
	var sixes = 0
	var threeOfKind = 0
	var fourOfKind = 0
	var fullHouse = 0
	var smallStraight = 0
	var largeStraight = 0
	var yaz = 0
	var chance = 0
	var upperTotal = GetUpperTotal()
	var lowerTotal = GetLowerTotal()
	var grandTotal = GetGrandTotal()
	var bonus = false

	func GetUpperTotal() -> Int {

		let rules = Rules()
		var r = ones + twos + threes + fours + fives + sixes

		if bonus = true {
			r = r + rules.upperBonusValue
		}

		return r
	}

	func GetLowerTotal() -> Int {

		let r = threeOfKind + fourOfKind + fullHouse + smallStraight + largeStraight + yaz + chance

		return r
	}

	func GetGrandTotal() -> Int {

		let r = GetUpperTotal() + GetLowerTotal()

		return r
	}


	func SetScore(TypeOfScore: ScoreTypes, Dice: DiceSet) {

		let rules = Rules()

		switch TypeOfScore {
			case ScoreTypes.Ones: ones = rules.CalcOnes(Dice: Dice)
			case ScoreTypes.Twos: twos = rules.CalcTwos(Dice: Dice)
			case ScoreTypes.Threes: threes = rules.CalcThrees(Dice: Dice)
			case ScoreTypes.Fours: fours = rules.CalcFours(Dice: Dice)
			case ScoreTypes.Fives: fives = rules.CalcFives(Dice: Dice)
			case ScoreTypes.Sixes: sixes = rules.CalcSixes(Dice: Dice)
			case ScoreTypes.ThreeOfKind: threeOfKind = rules.CalcThreeOfKind(Dice: Dice)
			case ScoreTypes.FourOfKind: fourOfKind = rules.CalcFourOfKind(Dice: Dice)
			case ScoreTypes.FullHouse: fullHouse = rules.CalcFullHouse()
			case ScoreTypes.SmallStraight: smallStraight = rules.CalcSmallStraight()
			case ScoreTypes.LargeStraight: largeStraight = rules.CalcLargeStright()
			case ScoreTypes.Yaz: yaz = rules.CalcYaz()
			case ScoreTypes.Chance: chance = rules.CalcChance(Dice: Dice)
		}
	}

	func Reset() {

		ones = 0
		twos = 0
		threes = 0
		fours = 0
		fives = 0
		sixes = 0
		threeOfKind = 0
		fourOfKind = 0
		fullHouse = 0
		smallStraight = 0
		largeStraight = 0
		yaz = 0
		chance = 0
		upperTotal = 0
		lowerTotal = 0
		grandTotal = 0
		bonus = false

	}
}
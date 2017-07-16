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
	let upperBonus = 35
	var upperTotal = GetUpperTotal()
	var lowerTotal = GetLowerTotal()
	var bonus = false

	func GetUpperTotal() -> Int {

		var r = ones + twos + threes + fours + fives + sixes

		if bonus = true {
			r = r + upperBonus
		}

		return r
	}

	func GetLowerTotal() -> Int {

		let r = threeOfKind + fourOfKind + fullHouse + smallStraight + largeStraight + yaz + chance

		return r
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
	}
}
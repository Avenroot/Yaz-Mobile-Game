public class Game {

	var HowManyRolls = 0
	let scoreBoard = Scoreboard()
	let rules = Rules()
	let diceSet = DiceSet()

	public func Start() {

		scoreBoard.Reset()
	}

	public func Finish() {
		// do something when the game ends.  Possible upload to server.
	}
}
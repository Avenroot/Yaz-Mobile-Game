public class yazDice: android.widget.ImageView {

    var locked = false
    var value = 0
    let ytimer = yazTimer(1 * 1000, 100)

    func Roll() {

        ytimer.onTickCallback = timerOnTickHandler  // would be nice to put this in an init{}
        ytimer.start();

    }

    func timerOnTickHandler() {

        if !locked {
            let rand = Random()
            var r = rand.NextInt(6)
            value = r
            var dice = diceNumberImages()
            let drawableID = Context
            .getResources()
            .getIdentifier(dice[r], "drawable", Context.getPackageName())
            self.setImageResource(drawableID)
        }

    }

    private func diceNumberImages() -> [Integer: String]{
        return [
        0: "dice1",
        1: "dice1",
        2: "dice2",
        3: "dice3",
        4: "dice4",
        5: "dice5",
        6: "dice6"
        ]
    }
}
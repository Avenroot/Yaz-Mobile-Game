public class yazDice: android.widget.ImageView {

    var locked = false
    var value = 0
    let ytimer = yazTimer(3 * 1000, 100)

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
        1: "dice1.jpg",
        2: "dice2.jpg",
        3: "dice3.jpg",
        4: "dice4.jpg",
        5: "dice5.jpg",
        6: "dice6.jpg"
        ]
    }
}
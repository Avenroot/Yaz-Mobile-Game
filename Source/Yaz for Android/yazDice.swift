public class yazDice: android.widget.ImageView {

    var Locked = false
    var Value = 0
    let ytimer = yazTimer(1 * 1000, 100)

    func Roll( timerOnFinishHandler: ()->() ) -> Int32 {

        ytimer.onTickCallback = timerOnTickHandler  // would be nice to put this in an init{}
        ytimer.OnFinishCallback =  { timerOnFinishHandler() }
        ytimer.start()
        return Value

    }

    func timerOnTickHandler() {

        if !Locked {
            let rand = Random()
            var r = rand.NextInt(6)
            Value = r + 1  // Zero Indexed and need the real value of the dice
            var dice = diceNumberImages()
            let drawableID = Context
            .getResources()
            .getIdentifier(dice[r], "drawable", Context.getPackageName())
            self.setImageResource(drawableID)
        }
    }

    func timerOnFinishHandler() -> Int32 {

        return Value

    }

    private func diceNumberImages() -> [Integer: String]{
        return [
        0: "dice1",
        1: "dice2",
        2: "dice3",
        3: "dice4",
        4: "dice5",
        5: "dice6"
        ]
    }
}
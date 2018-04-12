public class yazDice: android.widget.ImageView {

    var result = DiceResults()
    var locked = false

    func Roll() {

        let yt = yazTimer(3 * 1000, 100)
        result.Value1 = yt.diceResult       
        yt.start();

        if result.Value1 == 1 {
            // update the image to dice1 image
          //  self.setImageResource(android.R.drawable.dice1)
        }

        
    }

}
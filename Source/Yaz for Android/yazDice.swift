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
            var r = rand.NextInt(6) + 1   
            value = r    
                
            if r == 1 {
                let drawableID = Context.getResources().getIdentifier("dice1.jpg", "drawable", Context.getPackageName())
                self.setImageResource(drawableID)
            }
                           
            if r == 2 {
                let drawableID = Context.getResources().getIdentifier("dice2.jpg", "drawable", Context.getPackageName())
                self.setImageResource(drawableID)
            }

            if r == 3 {
                let drawableID = Context.getResources().getIdentifier("dice3.jpg", "drawable", Context.getPackageName())
                self.setImageResource(drawableID)
            }
                           
            if r == 4 {
                let drawableID = Context.getResources().getIdentifier("dice4.jpg", "drawable", Context.getPackageName())
                self.setImageResource(drawableID)
            }

            if r == 5 {
                let drawableID = Context.getResources().getIdentifier("dice5.jpg", "drawable", Context.getPackageName())
                self.setImageResource(drawableID)
            }
                           
            if r == 6 {
                let drawableID = Context.getResources().getIdentifier("dice6.jpg", "drawable", Context.getPackageName())
                self.setImageResource(drawableID)
            }

        }

    }

}
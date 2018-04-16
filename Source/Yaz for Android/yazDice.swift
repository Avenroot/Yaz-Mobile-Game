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
            
            switch r {

                case 0: 
                    let drawableID = Context.getResources().getIdentifier("dice1.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)
                

                case 1: 
                    let drawableID = Context.getResources().getIdentifier("dice2.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)
                

                case 2: 
                    let drawableID = Context.getResources().getIdentifier("dice3.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)
                

                case 3: 
                    let drawableID = Context.getResources().getIdentifier("dice4.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)
                

                case 4: 
                    let drawableID = Context.getResources().getIdentifier("dice5.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)
                

                case 5: 
                    let drawableID = Context.getResources().getIdentifier("dice6.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)

                default:  
                    let drawableID = Context.getResources().getIdentifier("dice1.jpg", "drawable", Context.getPackageName())
                    self.setImageResource(drawableID)
                
            }

        }

    }

}
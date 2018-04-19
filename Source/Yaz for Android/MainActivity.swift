import java.util
import android.app
import android.content
import android.os
import android.util
import android.view
import android.widget

public class MainActivity: Activity {

  public override func onCreate(_ savedInstanceState: Bundle!) {
    super.onCreate(savedInstanceState)
    ContentView = R.layout.main

    let diceOne = self.findViewById(R.id.ivDiceOne) as yazDice
    let diceTwo = self.findViewById(R.id.ivDiceTwo) as yazDice
    let diceThree = self.findViewById(R.id.ivDiceThree) as yazDice
    let diceFour = self.findViewById(R.id.ivDiceFour) as yazDice
    let diceFive = self.findViewById(R.id.ivDiceFive) as yazDice


    let btnones = findViewById(R.id.btnRollDice) as! Button

    btnones.OnClickListener = { (v: View!) in

        diceOne.Roll()
        diceTwo.Roll()
        diceThree.Roll()
        diceFour.Roll()
        diceFive.Roll()

    }
  }
}
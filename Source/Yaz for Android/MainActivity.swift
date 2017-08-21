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

		let btnones = findViewById(R.id.btnRollDice) as! Button

		btnones.OnClickListener = { (v: View!) in
			let imgone = self.findViewById(R.id.ivDiceOne) as! ImageView

			let timerCount = MyCount(3 * 1000, 1000)

			timerCount.start()


			class MyCount : CountDownTimer {
				//  public init(_ millisInFuture: Int64, _ countDownInterval: Int64) {
				// super.init(millisInFuture, countDownInterval)
				//  }

				// @Override
				override public func onFinish() {
					// some script here
					//
				}

				// @Override
				override public func onTick(_ millisUntilFinished: Int64) {

					let rand = Random()
					var r = rand.nextInt(6) + 1;

					if r == 1 {imgone.setImageResource(R.drawable.dice1)}
					if r == 2 {imgone.setImageResource(R.drawable.dice2)}
					if r == 3 {imgone.setImageResource(R.drawable.dice3)}
					if r == 4 {imgone.setImageResource(R.drawable.dice4)}
					if r == 5 {imgone.setImageResource(R.drawable.dice5)}
					if r == 6 {imgone.setImageResource(R.drawable.dice6)}

				}
			}

		}

	}
}
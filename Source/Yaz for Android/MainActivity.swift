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

		let imgone = self.findViewById(R.id.ivDiceOne) as! ImageView
		let imgtwo = self.findViewById(R.id.ivDiceTwo) as! ImageView
		let imgthree = self.findViewById(R.id.ivDiceThree) as! ImageView
		let imgfour = self.findViewById(R.id.ivDiceFour) as! ImageView
		let imgfive = self.findViewById(R.id.ivDiceFive) as! ImageView

		class MyCount : CountDownTimer {
			//  public init(_ millisInFuture: Int64, _ countDownInterval: Int64) {
			// super.init(millisInFuture, countDownInterval)
			//  }

			// @Override
			override public func onFinish() {

		}

			// @Override
			override public func onTick(_ millisUntilFinished: Int64) {


				let rand1 = Random()
				var r1 = rand1.nextInt(6) + 1;

				if r1 == 1 {imgone.setImageResource(R.drawable.dice1)}
				if r1 == 2 {imgone.setImageResource(R.drawable.dice2)}
				if r1 == 3 {imgone.setImageResource(R.drawable.dice3)}
				if r1 == 4 {imgone.setImageResource(R.drawable.dice4)}
				if r1 == 5 {imgone.setImageResource(R.drawable.dice5)}
				if r1 == 6 {imgone.setImageResource(R.drawable.dice6)}

				let rand2 = Random()
				let r2 = rand2.nextInt(6) + 1

				if r2 == 1 {imgtwo.setImageResource(R.drawable.dice1)}
				if r2 == 2 {imgtwo.setImageResource(R.drawable.dice2)}
				if r2 == 3 {imgtwo.setImageResource(R.drawable.dice3)}
				if r2 == 4 {imgtwo.setImageResource(R.drawable.dice4)}
				if r2 == 5 {imgtwo.setImageResource(R.drawable.dice5)}
				if r2 == 6 {imgtwo.setImageResource(R.drawable.dice6)}

				let rand3 = Random()
				let r3 = rand3.nextInt(6) + 1

				if r3 == 1 {imgthree.setImageResource(R.drawable.dice1)}
				if r3 == 2 {imgthree.setImageResource(R.drawable.dice2)}
				if r3 == 3 {imgthree.setImageResource(R.drawable.dice3)}
				if r3 == 4 {imgthree.setImageResource(R.drawable.dice4)}
				if r3 == 5 {imgthree.setImageResource(R.drawable.dice5)}
				if r3 == 6 {imgthree.setImageResource(R.drawable.dice6)}

				let rand4 = Random()
				let r4 = rand4.nextInt(6) + 1

				if r4 == 1 {imgfour.setImageResource(R.drawable.dice1)}
				if r4 == 2 {imgfour.setImageResource(R.drawable.dice2)}
				if r4 == 3 {imgfour.setImageResource(R.drawable.dice3)}
				if r4 == 4 {imgfour.setImageResource(R.drawable.dice4)}
				if r4 == 5 {imgfour.setImageResource(R.drawable.dice5)}
				if r4 == 6 {imgfour.setImageResource(R.drawable.dice6)}

				let rand5 = Random()
				let r5 = rand5.nextInt(6) + 1

				if r5 == 1 {imgfive.setImageResource(R.drawable.dice1)}
				if r5 == 2 {imgfive.setImageResource(R.drawable.dice2)}
				if r5 == 3 {imgfive.setImageResource(R.drawable.dice3)}
				if r5 == 4 {imgfive.setImageResource(R.drawable.dice4)}
				if r5 == 5 {imgfive.setImageResource(R.drawable.dice5)}
				if r5 == 6 {imgfive.setImageResource(R.drawable.dice6)}

			}
		}


		let btnones = findViewById(R.id.btnRollDice) as! Button
		let timerCount = MyCount(3 * 1000, 100)

		btnones.OnClickListener = { (v: View!) in

		timerCount.start()

		}
	}
}
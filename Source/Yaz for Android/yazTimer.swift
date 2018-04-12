public class yazTimer : android.os.CountDownTimer {

    var diceResult = 0

    public  override func onTick(_ arg1: Int64) {

        let rand = Random()       
        diceResult = rand.NextInt(6) + 1
        
/*
        let imgone = self.findViewById(R.id.ivDiceOne) as! ImageView
        let imgtwo = self.findViewById(R.id.ivDiceTwo) as! ImageView
        let imgthree = self.findViewById(R.id.ivDiceThree) as! ImageView
        let imgfour = self.findViewById(R.id.ivDiceFour) as! ImageView
        let imgfive = self.findViewById(R.id.ivDiceFive) as! ImageView

        let rand1 = Random()
        var r1 = rand1.NextInt(6) + 1;

        if r1 == 1 {imgone.setImageResource(R.drawable.dice1)}
        if r1 == 2 {imgone.setImageResource(R.drawable.dice2)}
        if r1 == 3 {imgone.setImageResource(R.drawable.dice3)}
        if r1 == 4 {imgone.setImageResource(R.drawable.dice4)}
        if r1 == 5 {imgone.setImageResource(R.drawable.dice5)}
        if r1 == 6 {imgone.setImageResource(R.drawable.dice6)}

        let rand2 = Random()
        let r2 = rand2.NextInt(6) + 1

        if r2 == 1 {imgtwo.setImageResource(R.drawable.dice1)}
        if r2 == 2 {imgtwo.setImageResource(R.drawable.dice2)}
        if r2 == 3 {imgtwo.setImageResource(R.drawable.dice3)}
        if r2 == 4 {imgtwo.setImageResource(R.drawable.dice4)}
        if r2 == 5 {imgtwo.setImageResource(R.drawable.dice5)}
        if r2 == 6 {imgtwo.setImageResource(R.drawable.dice6)}

        let rand3 = Random()
        let r3 = rand3.NextInt(6) + 1

        if r3 == 1 {imgthree.setImageResource(R.drawable.dice1)}
        if r3 == 2 {imgthree.setImageResource(R.drawable.dice2)}
        if r3 == 3 {imgthree.setImageResource(R.drawable.dice3)}
        if r3 == 4 {imgthree.setImageResource(R.drawable.dice4)}
        if r3 == 5 {imgthree.setImageResource(R.drawable.dice5)}
        if r3 == 6 {imgthree.setImageResource(R.drawable.dice6)}
        let rand4 = Random()
        let r4 = rand4.NextInt(6) + 1

        if r4 == 1 {imgfour.setImageResource(R.drawable.dice1)}
        if r4 == 2 {imgfour.setImageResource(R.drawable.dice2)}
        if r4 == 3 {imgfour.setImageResource(R.drawable.dice3)}
        if r4 == 4 {imgfour.setImageResource(R.drawable.dice4)}
        if r4 == 5 {imgfour.setImageResource(R.drawable.dice5)}
        if r4 == 6 {imgfour.setImageResource(R.drawable.dice6)}

        let rand5 = Random()
        let r5 = rand5.NextInt(6) + 1

        if r5 == 1 {imgfive.setImageResource(R.drawable.dice1)}
        if r5 == 2 {imgfive.setImageResource(R.drawable.dice2)}
        if r5 == 3 {imgfive.setImageResource(R.drawable.dice3)}
        if r5 == 4 {imgfive.setImageResource(R.drawable.dice4)}
        if r5 == 5 {imgfive.setImageResource(R.drawable.dice5)}
        if r5 == 6 {imgfive.setImageResource(R.drawable.dice6)}*/

    }

    public override func onFinish() {
        
        
    }

}
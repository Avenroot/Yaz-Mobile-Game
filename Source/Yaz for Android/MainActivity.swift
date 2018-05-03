import java.util
import android.app
import android.content
import android.os
import android.util
import android.view
import android.widget

public class MainActivity: Activity {

    let game = Game()

    var diceOne: yazDice { return findViewById(R.id.ivDiceOne) as! yazDice }
    var diceTwo: yazDice { return findViewById(R.id.ivDiceTwo) as! yazDice }
    var diceThree: yazDice { return findViewById(R.id.ivDiceThree) as! yazDice }
    var diceFour: yazDice { return findViewById(R.id.ivDiceFour) as! yazDice }
    var diceFive: yazDice { return findViewById(R.id.ivDiceFive) as! yazDice }

    var btnOnes: Button { return findViewById(R.id.btnOnes) as! Button }
    var btnTwos: Button { return findViewById(R.id.btnTwos) as! Button }
    var btnThrees: Button { return findViewById(R.id.btnThrees) as! Button }
    var btnFours: Button { return findViewById(R.id.btnFours) as! Button }
    var btnFives: Button { return findViewById(R.id.btnFives) as! Button }
    var btnSixes: Button { return findViewById(R.id.btnSixes) as! Button }

    var btnThreeOfKind: Button { return findViewById(R.id.btnThreeOfKind) as! Button }
    var btnFourOfKind: Button { return findViewById(R.id.btnFourOfKind) as! Button }
    var btnFullHouse: Button { return findViewById(R.id.btnFullHouse) as! Button }
    var btnSmallStraight: Button { return findViewById(R.id.btnSmallStraight) as! Button }
    var btnLargeStraight: Button { return findViewById(R.id.btnLargeStraight) as! Button }
    var btnYaz: Button { return findViewById(R.id.btnYaz) as! Button }
    var btnChance: Button { return findViewById(R.id.btnChance) as! Button }

    var btnRollDice: Button { return findViewById(R.id.btnRollDice) as! Button }

    var tvUpperTotal: TextView { return findViewById(R.id.tvUpperTotal) as! TextView }
    var tvLowerTotal: TextView { return findViewById(R.id.tvLowerTotal) as! TextView }
    var tvGrandTotal: TextView { return findViewById(R.id.tvGrandTotal) as! TextView }


    public func UpdateUI() {

        tvUpperTotal.Text = "Upper Total: " + Integer.toString(game.scoreBoard.GetUpperTotal())
        tvLowerTotal.Text = "Lower Total: " + Integer.toString(game.scoreBoard.GetLowerTotal())
        tvGrandTotal.Text = "Grand Total: " + Integer.toString(game.scoreBoard.GetGrandTotal())
        self.game.HowManyRolls = 0
        UnlockAllDice()

    }

    // This is Temp to see dice results for testing
    public func updateResultUI() {

        self.btnRollDice.Text = self.game.diceSet.dice1.Value + "," + self.game.diceSet.dice2.Value + "," +
        self.game.diceSet.dice3.Value + "," + self.game.diceSet.dice4.Value + "," + self.game.diceSet.dice5.Value

    }

    public func UnlockAllDice() {

        diceOne.Locked = false
        diceTwo.Locked = false
        diceThree.Locked = false
        diceFour.Locked = false
        diceFive.Locked = false

    }


    public override func onCreate(_ savedInstanceState: Bundle!) {
        super.onCreate(savedInstanceState)
        ContentView = R.layout.main


        // Roll Dice
        btnRollDice.OnClickListener = { (v: View!) in

            if self.game.HowManyRolls < 3 {

                self.diceOne.Roll() {
                    self.game.diceSet.dice1.Value = self.diceOne.Value
                    self.updateResultUI()
                }

                self.diceTwo.Roll() {
                    self.game.diceSet.dice2.Value = self.diceTwo.Value
                    self.updateResultUI()
                }

                self.diceThree.Roll() {
                    self.game.diceSet.dice3.Value = self.diceThree.Value
                    self.updateResultUI()
                }

                self.diceFour.Roll() {
                    self.game.diceSet.dice4.Value = self.diceFour.Value
                    self.updateResultUI()
                }

                self.diceFive.Roll() {
                    self.game.diceSet.dice5.Value = self.diceFive.Value
                    self.updateResultUI()
                }


                self.game.HowManyRolls += 1

            } else {
                // show message that can't roll again
            }

        }

        // Ones
        btnOnes.OnClickListener = { (v: View!)  in

            if !self.game.scoreBoard.ones.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Ones, diceSet: self.game.diceSet)
                self.btnOnes.Text = "Ones: " + Integer.toString(self.game.scoreBoard.ones.Value)
                self.UpdateUI()

            } else {
                // message that Ones have already been used
                Toast.makeText(self, "Ones have already been used", Toast.LENGTH_SHORT).show()
            }
        }

        // Twos
        btnTwos.OnClickListener = { (v: View!)  in

            if !self.game.scoreBoard.twos.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Twos, diceSet: self.game.diceSet)
                self.btnTwos.Text = "Twos: " + Integer.toString(self.game.scoreBoard.twos.Value)
                self.UpdateUI()

            } else {
                // message that Twos have already been used
                Toast.makeText(self, "Twos have already been used", Toast.LENGTH_SHORT).show()
            }
        }

        // Threes
        btnThrees.OnClickListener = { (v: View!)  in

            if !self.game.scoreBoard.threes.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Threes, diceSet: self.game.diceSet)
                self.btnThrees.Text = "Threes: " + Integer.toString(self.game.scoreBoard.threes.Value)
                self.UpdateUI()

            } else {
                // message that Threes have already been used
                Toast.makeText(self, "Threes have already been used", Toast.LENGTH_SHORT).show()
            }
        }

        // Fours
        btnFours.OnClickListener = { (v: View!)  in

            if !self.game.scoreBoard.fours.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Fours, diceSet: self.game.diceSet)
                self.btnFours.Text = "Fours: " + Integer.toString(self.game.scoreBoard.fours.Value)
                self.UpdateUI()

            } else {
                // message that Fours have alreayd been used
                Toast.makeText(self, "Fours have already been used", Toast.LENGTH_SHORT).show()
            }
        }

        // Fives
        btnFives.OnClickListener = { (v: View!)  in

            if !self.game.scoreBoard.fives.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Fives, diceSet: self.game.diceSet)
                self.btnFives.Text = "Fives: " + Integer.toString(self.game.scoreBoard.fives.Value)
                self.UpdateUI()

            } else {
                // message that Five have already been used
                Toast.makeText(self, "Fives have already been used", Toast.LENGTH_SHORT).show()
            }
        }

        // Sixes
        btnSixes.OnClickListener = { (v: View!)  in

            if !self.game.scoreBoard.sixes.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Sixes, diceSet: self.game.diceSet)
                self.btnSixes.Text = "Sixes: " + Integer.toString(self.game.scoreBoard.sixes.Value)
                self.UpdateUI()

            } else {
                // message that Sixes have alreayd been used
                Toast.makeText(self, "Sixes have already been used", Toast.LENGTH_SHORT).show()
            }
        }


        // Three of a Kind
        btnThreeOfKind.OnClickListener = { (v: View!) in

            if self.game.rules.IsThreeOfKind(diceSet: self.game.diceSet) {

                if !self.game.scoreBoard.largeStraight.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.ThreeOfKind, diceSet: self.game.diceSet)
                    self.btnThreeOfKind.Text = "3 of Kind: " + Integer.toString(self.game.scoreBoard.threeOfKind.Value)
                    self.UpdateUI()

                } else {
                    // message that Three of a Kind has alreayd been used
                    Toast.makeText(self, "Three of a Kind has already been used", Toast.LENGTH_SHORT).show()
                }

            } else {
                // message that diceset is not a Three of a Kind
            }
        }

        // Four of a Kind
        btnFourOfKind.OnClickListener = { (v: View! ) in

            if self.game.rules.IsFourOfKind(diceSet: self.game.diceSet) {

                if !self.game.scoreBoard.fourOfKind.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.FourOfKind, diceSet: self.game.diceSet)
                    self.btnFourOfKind.Text = "4 of Kind: " + Integer.toString(self.game.scoreBoard.fourOfKind.Value)
                    self.UpdateUI()

                } else {
                    // message that Four of a Kind has already been used
                    Toast.makeText(self, "Four of a Kind already been used", Toast.LENGTH_SHORT).show()
                }

            } else {
                // message that diceset is not a Four of a Kind.  Given the option to add a zero or not.
            }
        }

        // Full House
        btnFullHouse.OnClickListener = { (v: View! ) in

            if self.game.rules.IsFullHouse(diceSet: self.game.diceSet) {

                if !self.game.scoreBoard.fullHouse.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.FullHouse, diceSet: self.game.diceSet)
                    self.btnFullHouse.Text = "Full House: " + Integer.toString(self.game.scoreBoard.fullHouse.Value)
                    self.UpdateUI()

                } else {
                    // message that Full House has alredy been used
                    Toast.makeText(self, "Full House has already been used", Toast.LENGTH_SHORT).show()
                }

            } else {
                // message that diceset is not a Full House
            }
        }

        // Small Straight
        btnSmallStraight.OnClickListener = { (v: View! ) in

            if self.game.rules.IsSmallStraight(diceSet: self.game.diceSet) {

                if !self.game.scoreBoard.smallStraight.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.SmallStraight, diceSet: self.game.diceSet)
                    self.btnSmallStraight.Text = "Small Straight: " + Integer.toString(self.game.scoreBoard.smallStraight.Value)
                    self.UpdateUI()

                } else {
                    // message that Small Straight has alreayd been used
                    Toast.makeText(self, "Small Straight has already been used", Toast.LENGTH_SHORT).show()
                }

            } else {
                // message that diceset is not a Small Straight
            }
        }

        // Large Straight
        btnLargeStraight.OnClickListener = { (v: View! ) in

            if self.game.rules.IsLargeStraight(diceSet: self.game.diceSet) {

                if !self.game.scoreBoard.largeStraight.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.LargeStraight, diceSet: self.game.diceSet)
                    self.btnLargeStraight.Text = "Large Straight: " + Integer.toString(self.game.scoreBoard.largeStraight.Value)
                    self.UpdateUI()

                } else {
                    // message that Large Straight has already been used
                    Toast.makeText(self, "Large Straight has already been used", Toast.LENGTH_SHORT).show()
                }

            } else {
                // message that diceset is not a Large Straight
            }
        }

        // Yaz
        btnYaz.OnClickListener = { (v: View! ) in

            if self.game.rules.IsYaz(diceSet: self.game.diceSet) {

                if !self.game.scoreBoard.yaz.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Yaz, diceSet: self.game.diceSet)
                    self.btnYaz.Text = "Yaz: " + Integer.toString(self.game.scoreBoard.yaz.Value)
                    self.UpdateUI()

                } else {
                    // message that Yaz has alreayd been used
                    Toast.makeText(self, "Yaz has already been used", Toast.LENGTH_SHORT).show()
                }

            } else {
                // message that diceset is not a Yaz
            }
        }

        // Chance
        btnChance.OnClickListener = { (v: View! ) in

            if !self.game.scoreBoard.chance.Used {

                self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Chance, diceSet: self.game.diceSet)
                self.btnChance.Text = "Chance: " + Integer.toString(self.game.scoreBoard.chance.Value)
                self.UpdateUI()

            } else {
                //message that Chance has already been used
                Toast.makeText(self, "Chance has already been used", Toast.LENGTH_SHORT).show()
            }
        }

        // Dice One
        diceOne.OnClickListener = { (v: View!) in

            if self.diceOne.Locked {
                self.diceOne.Locked = false}  else {
                    self.diceOne.Locked = true
            }
            self.game.diceSet.dice1.Value = self.diceOne.Value
        }

        // Dice Two
        diceTwo.OnClickListener = { (v: View!) in

            if self.diceTwo.Locked {
                self.diceTwo.Locked = false}  else {
                    self.diceTwo.Locked = true
            }
        }

        // Dice Three
        diceThree.OnClickListener = { (v: View!) in

            if self.diceThree.Locked {
                self.diceThree.Locked = false}  else {
                    self.diceThree.Locked = true
            }
        }

       // Dice Four
        diceFour.OnClickListener = { (v: View!) in

            if self.diceFour.Locked {
                self.diceFour.Locked = false}  else {
                    self.diceFour.Locked = true
            }
        }

        // Dice Five
        diceFive.OnClickListener = { (v: View!) in

            if self.diceFive.Locked {
                self.diceFive.Locked = false}  else {
                    self.diceFive.Locked = true
            }
        }
    }
}
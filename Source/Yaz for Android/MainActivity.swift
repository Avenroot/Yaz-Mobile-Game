import java.util
import android.app
import android.content
import android.os
import android.util
import android.view
import android.widget
import android.graphics

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
    var tvRolls: TextView { return findViewById(R.id.tvRolls) as! TextView }

    var tvUpperTotal: TextView { return findViewById(R.id.tvUpperTotal) as! TextView }
    var tvLowerTotal: TextView { return findViewById(R.id.tvLowerTotal) as! TextView }
    var tvGrandTotal: TextView { return findViewById(R.id.tvGrandTotal) as! TextView }


    public func StartNewGame() {

        game.Start()
        UpdateUI()
        UnlockAllDice()
        game.HowManyRolls = 0

    }

    // UpdateUI() should only be called when you place a score on the scoreboard
    public func UpdateUI() {

        //btnOnes
        btnOnes.Text = "Ones: " + Integer.toString(self.game.scoreBoard.ones.Value)
        if self.game.scoreBoard.ones.Used {
            self.btnOnes.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnOnes.setTypeface(nil, Typeface.NORMAL)
        }

        // btnTwos
        btnTwos.Text = "Twos: " + Integer.toString(self.game.scoreBoard.twos.Value)
        if self.game.scoreBoard.twos.Used {
            self.btnTwos.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnTwos.setTypeface(nil, Typeface.NORMAL)
        }

        // btnThrees
        btnThrees.Text = "Threes: " + Integer.toString(self.game.scoreBoard.threes.Value)
        if self.game.scoreBoard.threes.Used {
            self.btnThrees.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnThrees.setTypeface(nil, Typeface.NORMAL)
        }

        // btnFour
        btnFours.Text = "Fours: " + Integer.toString(self.game.scoreBoard.fours.Value)
        if self.game.scoreBoard.fours.Used {
            self.btnFours.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnFours.setTypeface(nil, Typeface.NORMAL)
        }

        // btnFives
        btnFives.Text = "Fives: " + Integer.toString(self.game.scoreBoard.fives.Value)
        if self.game.scoreBoard.fives.Used {
            self.btnFives.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnFives.setTypeface(nil, Typeface.NORMAL)
        }

        // btnSixes
        btnSixes.Text = "Sixes: " + Integer.toString(self.game.scoreBoard.sixes.Value)
        if self.game.scoreBoard.sixes.Used {
            self.btnSixes.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnSixes.setTypeface(nil, Typeface.NORMAL)
        }

        // btnThreeOfKind
        btnThreeOfKind.Text = "3 of Kind: " + Integer.toString(self.game.scoreBoard.threeOfKind.Value)
        if self.game.scoreBoard.threeOfKind.Used {
            self.btnThreeOfKind.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnThreeOfKind.setTypeface(nil, Typeface.NORMAL)
        }

        // btnFourOfKind
        btnFourOfKind.Text = "4 of Kind: " + Integer.toString(self.game.scoreBoard.fourOfKind.Value)
        if self.game.scoreBoard.fourOfKind.Used {
            self.btnFourOfKind.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnFourOfKind.setTypeface(nil, Typeface.NORMAL)
        }

        // btnFullHouse
        btnFullHouse.Text = "Full House: " + Integer.toString(self.game.scoreBoard.fullHouse.Value)
        if self.game.scoreBoard.fullHouse.Used {
            self.btnFullHouse.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnFullHouse.setTypeface(nil, Typeface.NORMAL)
        }

        // btnSmallStraight
        btnSmallStraight.Text = "Small Straight: " + Integer.toString(self.game.scoreBoard.smallStraight.Value)
        if self.game.scoreBoard.smallStraight.Used {
            self.btnSmallStraight.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnSmallStraight.setTypeface(nil, Typeface.NORMAL)
        }

        // btnLargeStraight
        btnLargeStraight.Text = "Large Straight: " + Integer.toString(self.game.scoreBoard.largeStraight.Value)
        if self.game.scoreBoard.largeStraight.Used {
            self.btnLargeStraight.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnLargeStraight.setTypeface(nil, Typeface.NORMAL)
        }

        // btnYaz
        btnYaz.Text = "Yaz: " + Integer.toString(self.game.scoreBoard.yaz.Value)
        if self.game.scoreBoard.yaz.Used {
            self.btnYaz.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnYaz.setTypeface(nil, Typeface.NORMAL)
        }

        // btnChance
        btnChance.Text = "Chance: " + Integer.toString(self.game.scoreBoard.chance.Value)
        if self.game.scoreBoard.chance.Used {
            self.btnChance.setTypeface(nil, Typeface.BOLD)
        } else {
            self.btnChance.setTypeface(nil, Typeface.NORMAL)
        }

        tvUpperTotal.Text = "Upper Total: " + Integer.toString(game.scoreBoard.GetUpperTotal())
        tvLowerTotal.Text = "Lower Total: " + Integer.toString(game.scoreBoard.GetLowerTotal())
        tvGrandTotal.Text = "Grand Total: " + Integer.toString(game.scoreBoard.GetGrandTotal())

        if game.scoreBoard.IsEndGame() {

            self.buildAlert(context: self)
            .setMessage("Do you want to start a new game?")
            .setPositiveButton("Yes") {(dialog, which) in Toast.makeText(self, "New Game Started", Toast.LENGTH_LONG).show()

            // game logic if user decide to put 0 there
            self.StartNewGame()

            }
            .setNegativeButton("No"){(dialog, which) in dialog.cancel()}
            .create()
            .show()


        } else {

            self.game.HowManyRolls = 0

            UnlockAllDice()
            UpdateDiceBorderColor()
            UpdateRollInfo()

        }
    }

    private func UpdateRollInfo() {

        self.tvRolls.setTextColor(Color.BLACK)
        self.tvRolls.setTypeface(nil, Typeface.NORMAL)
        self.tvRolls.Text = "Rolls: " + Integer.toString(game.HowManyRolls)

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

    public func UpdateDiceBorderColor() {

       if self.diceOne.Locked {
           self.diceOne.setPadding(10,10,10,10)
           self.diceOne.setBackgroundColor(Color.YELLOW)
       } else {
           self.diceOne.setPadding(10,10,10,10)
           self.diceOne.setBackgroundColor(Color.GREEN)
       }

       if self.diceTwo.Locked {
           self.diceTwo.setPadding(10,10,10,10)
           self.diceTwo.setBackgroundColor(Color.YELLOW)
       } else {
           self.diceTwo.setPadding(10,10,10,10)
           self.diceTwo.setBackgroundColor(Color.GREEN)
       }

       if self.diceThree.Locked {
           self.diceThree.setPadding(10,10,10,10)
           self.diceThree.setBackgroundColor(Color.YELLOW)
       } else {
           self.diceThree.setPadding(10,10,10,10)
           self.diceThree.setBackgroundColor(Color.GREEN)
       }

       if self.diceFour.Locked {
           self.diceFour.setPadding(10,10,10,10)
           self.diceFour.setBackgroundColor(Color.YELLOW)
       } else {
           self.diceFour.setPadding(10,10,10,10)
           self.diceFour.setBackgroundColor(Color.GREEN)
       }

       if self.diceFive.Locked {
           self.diceFive.setPadding(10,10,10,10)
           self.diceFive.setBackgroundColor(Color.YELLOW)
       } else {
           self.diceFive.setPadding(10,10,10,10)
           self.diceFive.setBackgroundColor(Color.GREEN)
       }

    }


    public override func onCreate(_ savedInstanceState: Bundle!) {
        super.onCreate(savedInstanceState)
        ContentView = R.layout.main

        self.UpdateDiceBorderColor()

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
                self.tvRolls.Text = "Rolls: " + Integer.toString(self.game.HowManyRolls)

                if self.game.HowManyRolls == 3 {
                    self.tvRolls.setTextColor(Color.RED)
                    self.tvRolls.setTypeface(nil, Typeface.BOLD)
                } else {
                    self.tvRolls.setTextColor(Color.BLACK)
                    self.tvRolls.setTypeface(nil, Typeface.NORMAL)
                }

            } else {
                // show message that can't roll again
                Toast.makeText(self, "You have rolled 3 times. Place your score", Toast.LENGTH_SHORT).show()
            }

        }

        // Ones
        btnOnes.OnClickListener = { (v: View!)  in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.ones.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Ones, diceSet: self.game.diceSet)
                    self.UpdateUI()
                    Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.ones.Value) + " to Ones", Toast.LENGTH_SHORT).show()

                } else {
                    // message that Ones have already been used
                    Toast.makeText(self, "Ones have already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Twos
        btnTwos.OnClickListener = { (v: View!)  in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.twos.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Twos, diceSet: self.game.diceSet)
                    self.UpdateUI()
                    Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.twos.Value) + " to Twos", Toast.LENGTH_SHORT).show()

                } else {
                    // message that Twos have already been used
                    Toast.makeText(self, "Twos have already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

            // Threes
            btnThrees.OnClickListener = { (v: View!)  in

                if self.game.HowManyRolls > 0 {

                    if !self.game.scoreBoard.threes.Used {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Threes, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.threes.Value) + " to Threes", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that Threes have already been used
                        Toast.makeText(self, "Threes have already been used", Toast.LENGTH_SHORT).show()
                    }
                }
            }

        // Fours
        btnFours.OnClickListener = { (v: View!)  in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.fours.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Fours, diceSet: self.game.diceSet)
                    self.UpdateUI()
                    Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.fours.Value) + " to Fours", Toast.LENGTH_SHORT).show()

                } else {
                    // message that Fours have alreayd been used
                    Toast.makeText(self, "Fours have already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Fives
        btnFives.OnClickListener = { (v: View!)  in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.fives.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Fives, diceSet: self.game.diceSet)
                    self.UpdateUI()
                    Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.fives.Value) + " to Fives", Toast.LENGTH_SHORT).show()

                } else {
                    // message that Five have already been used
                    Toast.makeText(self, "Fives have already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Sixes
        btnSixes.OnClickListener = { (v: View!)  in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.sixes.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Sixes, diceSet: self.game.diceSet)
                    self.UpdateUI()
                    Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.sixes.Value) + " to Sixes", Toast.LENGTH_SHORT).show()

                } else {
                    // message that Sixes have alreayd been used
                    Toast.makeText(self, "Sixes have already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }


        // Three of a Kind
        btnThreeOfKind.OnClickListener = { (v: View!) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.threeOfKind.Used {

                    if self.game.rules.IsThreeOfKind(diceSet: self.game.diceSet) {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.ThreeOfKind, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.threeOfKind.Value) + " to 3 of Kind", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that diceset is not a Three of a Kind
                        self.buildAlert(context: self)
                        .setPositiveButton("Yes"){(dialog, which) in Toast.makeText(self, "0 was added to 3 of Kind", Toast.LENGTH_LONG).show()
                        // game logic if user decide to put 0 there
                        self.game.scoreBoard.threeOfKind.SetToZero()
                        self.UpdateUI()
                    }
                        .setNegativeButton("Cancel"){(dialog, which) in dialog.cancel()}
                        .create()
                        .show()
                    }

                } else {
                    // message that Three of a Kind has alreayd been used
                    Toast.makeText(self, "3 of Kind has already been used", Toast.LENGTH_SHORT).show()
                }

            }

        }

        // Four of a Kind
        btnFourOfKind.OnClickListener = { (v: View! ) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.fourOfKind.Used {

                    if self.game.rules.IsFourOfKind(diceSet: self.game.diceSet) {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.FourOfKind, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.fourOfKind.Value) + " to 4 of Kind", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that diceset is not a Four of a Kind.  Given the option to add a zero or not.
                        self.buildAlert(context: self)
                        .setPositiveButton("Yes"){(dialog, which) in Toast.makeText(self, "0 was added to 4 of Kind", Toast.LENGTH_LONG).show()
                        // game logic if user decide to put 0 there
                        self.game.scoreBoard.fourOfKind.SetToZero()
                        self.UpdateUI()
                    }
                        .setNegativeButton("Cancel"){(dialog, which) in dialog.cancel()}
                        .create()
                        .show()
                    }

                } else {
                    // message that Four of a Kind has already been used
                    Toast.makeText(self, "4 of Kind already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Full House
        btnFullHouse.OnClickListener = { (v: View! ) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.fullHouse.Used {

                    if self.game.rules.IsFullHouse(diceSet: self.game.diceSet) {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.FullHouse, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.fullHouse.Value) + " to Full House", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that diceset is not a Full House
                        self.buildAlert(context: self)
                        .setPositiveButton("Yes"){(dialog, which) in Toast.makeText(self, "0 was added to Full House", Toast.LENGTH_LONG).show()
                        // game logic if user decide to put 0 there
                        self.game.scoreBoard.fullHouse.SetToZero()
                        self.UpdateUI()
                    }
                        .setNegativeButton("Cancel"){(dialog, which) in dialog.cancel()}
                        .create()
                        .show()
                    }

                } else {
                    // message that Full House has alredy been used
                    Toast.makeText(self, "Full House has already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Small Straight
        btnSmallStraight.OnClickListener = { (v: View! ) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.smallStraight.Used {

                    if self.game.rules.IsSmallStraight(diceSet: self.game.diceSet) {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.SmallStraight, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.smallStraight.Value) + " to Small Straight", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that diceset is not a Small Straight
                        self.buildAlert(context: self)
                        .setPositiveButton("Yes"){(dialog, which) in Toast.makeText(self, "0 was added to Small Straight", Toast.LENGTH_LONG).show()
                        // game logic if user decide to put 0 there
                        self.game.scoreBoard.smallStraight.SetToZero()
                        self.UpdateUI()
                    }
                        .setNegativeButton("Cancel"){(dialog, which) in dialog.cancel()}
                        .create()
                        .show()
                    }

                } else {
                    // message that Small Straight has alreayd been used
                    Toast.makeText(self, "Small Straight has already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Large Straight
        btnLargeStraight.OnClickListener = { (v: View! ) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.largeStraight.Used {

                    if self.game.rules.IsLargeStraight(diceSet: self.game.diceSet) {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.LargeStraight, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.largeStraight.Value) + " to Large Straight", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that diceset is not a Large Straight
                        self.buildAlert(context: self)
                        .setPositiveButton("Yes"){(dialog, which) in Toast.makeText(self, "0 was added to Large Straight", Toast.LENGTH_LONG).show()
                        // game logic if user decide to put 0 there
                        self.game.scoreBoard.largeStraight.SetToZero()
                        self.UpdateUI()
                    }
                        .setNegativeButton("Cancel"){(dialog, which) in dialog.cancel()}
                        .create()
                        .show()
                    }

                } else {
                    // message that Large Straight has already been used
                    Toast.makeText(self, "Large Straight has already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Yaz
        btnYaz.OnClickListener = { (v: View! ) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.yaz.Used {

                    if self.game.rules.IsYaz(diceSet: self.game.diceSet) {

                        self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Yaz, diceSet: self.game.diceSet)
                        self.UpdateUI()
                        Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.yaz.Value) + " to Yaz", Toast.LENGTH_SHORT).show()

                    } else {
                        // message that diceset is not a Yaz
                        self.buildAlert(context: self)
                        .setPositiveButton("Yes"){(dialog, which) in Toast.makeText(self, "0 was added to Yaz", Toast.LENGTH_LONG).show()
                        // game logic if user decide to put 0 there
                        self.game.scoreBoard.yaz.SetToZero()
                        self.UpdateUI()
                    }
                        .setNegativeButton("Cancel"){(dialog, which) in dialog.cancel()}
                        .create()
                        .show()
                    }

                } else {
                    // message that Yaz has alreayd been used
                    Toast.makeText(self, "Yaz has already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Chance
        btnChance.OnClickListener = { (v: View! ) in

            if self.game.HowManyRolls > 0 {

                if !self.game.scoreBoard.chance.Used {

                    self.game.scoreBoard.SetScore(TypeOfScore: ScoreTypes.Chance, diceSet: self.game.diceSet)
                    self.UpdateUI()
                    Toast.makeText(self, "Added " + Integer.toString(self.game.scoreBoard.chance.Value) + " to Chance", Toast.LENGTH_SHORT).show()

                } else {
                    //message that Chance has already been used
                    Toast.makeText(self, "Chance has already been used", Toast.LENGTH_SHORT).show()
                }
            }
        }

        // Dice One
        diceOne.OnClickListener = { (v: View!) in

            if self.diceOne.Locked {
                self.diceOne.Locked = false
            }  else {
                self.diceOne.Locked = true
            }

            self.UpdateDiceBorderColor()
        }

        // Dice Two
        diceTwo.OnClickListener = { (v: View!) in

            if self.diceTwo.Locked {
                self.diceTwo.Locked = false
            }  else {
                self.diceTwo.Locked = true
            }

            self.UpdateDiceBorderColor()
        }

        // Dice Three
        diceThree.OnClickListener = { (v: View!) in

            if self.diceThree.Locked {
                self.diceThree.Locked = false
            }  else {
                self.diceThree.Locked = true
            }

            self.UpdateDiceBorderColor()
        }

       // Dice Four
        diceFour.OnClickListener = { (v: View!) in

            if self.diceFour.Locked {
                self.diceFour.Locked = false
            }  else {
                self.diceFour.Locked = true
            }

            self.UpdateDiceBorderColor()
        }

        // Dice Five
        diceFive.OnClickListener = { (v: View!) in

            if self.diceFive.Locked {
                self.diceFive.Locked = false
            }  else {
                self.diceFive.Locked = true
            }

            self.UpdateDiceBorderColor()
        }
    }

    private func buildAlert(context : Context) -> AlertDialog.Builder {
        return AlertDialog
        .Builder(context)
        .setMessage("Do you wanna set points to 0?")
        .setCancelable(true)
    }

}
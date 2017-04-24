//
//  View501.swift
//  DartsData
//
//  Created by Dakota Raymond on 4/23/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import UIKit

class View501: UIViewController {
    @IBOutlet weak var TurnView: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var Player1View: UILabel!
    @IBOutlet weak var Player2View: UILabel!
    @IBOutlet weak var Player3View: UILabel!
    @IBOutlet weak var Player4View: UILabel!
    @IBOutlet weak var Player5View: UILabel!
    @IBOutlet weak var Player6View: UILabel!
    
    var currentScore = 0
    var currentPlayer = 1
    var player1Name = "Player 1"
    var player2Name = "Player 2"
    var player3Name = "Player 3"
    var player4Name = "Player 4"
    var player5Name = "Player 5"
    var player6Name = "Player 6"
    var player1Score = 501
    var player2Score = 501
    var player3Score = 501
    var player4Score = 501
    var player5Score = 501
    var player6Score = 501
    var turnsTaken = 0
    var currentHighScore = HighScoreData.fetchGame(in: Store.sharedMainContext(), game: "501")

    override func viewDidLoad() {
        super.viewDidLoad()
        updateScores()
        TurnView.text = player1Name + "'s Turn"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Button1(_ sender: UIButton) {
        currentScore += 1
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button2(_ sender: UIButton) {
        currentScore += 2
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button3(_ sender: UIButton) {
        currentScore += 3
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button4(_ sender: UIButton) {
        currentScore += 4
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button5(_ sender: UIButton) {
        currentScore += 5
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button6(_ sender: UIButton) {
        currentScore += 6
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button7(_ sender: UIButton) {
        currentScore += 7
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button8(_ sender: UIButton) {
        currentScore += 8
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button9(_ sender: UIButton) {
        currentScore += 9
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button10(_ sender: UIButton) {
        currentScore += 10
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button11(_ sender: UIButton) {
        currentScore += 11
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button12(_ sender: UIButton) {
        currentScore += 12
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button13(_ sender: UIButton) {
        currentScore += 13
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button14(_ sender: UIButton) {
        currentScore += 14
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button15(_ sender: UIButton) {
        currentScore += 15
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button16(_ sender: UIButton) {
        currentScore += 16
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button17(_ sender: UIButton) {
        currentScore += 17
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button18(_ sender: UIButton) {
        currentScore += 18
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button19(_ sender: UIButton) {
        currentScore += 19
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button20(_ sender: UIButton) {
        currentScore += 20
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button25(_ sender: UIButton) {
        currentScore += 25
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button50(_ sender: UIButton) {
        currentScore += 50
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func ClearButton(_ sender: UIButton) {
        currentScore = 0
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func EndTurnButton(_ sender: UIButton) {
        switch currentPlayer {
        case 1:
            turnsTaken += 1
            player1Score -= currentScore
            if (player1Score <= 0) {
                player1Score = 0
                let alert = UIAlertController(title: "Congratulations!", message: player1Name + " wins!", preferredStyle: UIAlertControllerStyle.alert)
                let action = UIAlertAction(title: "Close", style: .default) { (action) -> Void in
                    let nextView = self.storyboard?.instantiateViewController(withIdentifier: "MainMenu")
                    self.present(nextView!, animated: true, completion: nil)
                }
                alert.addAction(action)
                let highScore = HighScoreClass()
                highScore.game = "501"
                highScore.name = player1Name
                highScore.score = Int32(turnsTaken)
                if (Int32(turnsTaken) < currentHighScore.score) {
                    HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
                    HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
                }
                self.present(alert, animated: true, completion: nil)
            }
            if (player2Name != "") {
                currentPlayer += 1
                TurnView.text = player2Name + "'s Turn"
            } else {
                currentPlayer = 1
                TurnView.text = player1Name + "'s Turn"
            }
            updateScores()
        case 2:
            player2Score -= currentScore
            if (player2Score <= 0) {
                player2Score = 0
                let alert = UIAlertController(title: "Congratulations!", message: player2Name + " wins!", preferredStyle: UIAlertControllerStyle.alert)
                let action = UIAlertAction(title: "Close", style: .default) { (action) -> Void in
                    let nextView = self.storyboard?.instantiateViewController(withIdentifier: "MainMenu")
                    self.present(nextView!, animated: true, completion: nil)
                }
                alert.addAction(action)
                let highScore = HighScoreClass()
                highScore.game = "501"
                highScore.name = player2Name
                highScore.score = Int32(turnsTaken)
                if (Int32(turnsTaken) < currentHighScore.score) {
                    HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
                    HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
                }
                self.present(alert, animated: true, completion: nil)
            }
            if (player3Name != "") {
                currentPlayer += 1
                TurnView.text = player3Name + "'s Turn"
            } else {
                currentPlayer = 1
                TurnView.text = player1Name + "'s Turn"
            }
            updateScores()
        case 3:
            player3Score -= currentScore
            if (player3Score <= 0) {
                player3Score = 0
                let alert = UIAlertController(title: "Congratulations!", message: player3Name + " wins!", preferredStyle: UIAlertControllerStyle.alert)
                let action = UIAlertAction(title: "Close", style: .default) { (action) -> Void in
                    let nextView = self.storyboard?.instantiateViewController(withIdentifier: "MainMenu")
                    self.present(nextView!, animated: true, completion: nil)
                }
                alert.addAction(action)
                let highScore = HighScoreClass()
                highScore.game = "501"
                highScore.name = player3Name
                highScore.score = Int32(turnsTaken)
                if (Int32(turnsTaken) < currentHighScore.score) {
                    HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
                    HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
                }
                self.present(alert, animated: true, completion: nil)
            }
            if (player4Name != "") {
                currentPlayer += 1
                TurnView.text = player4Name + "'s Turn"
            } else {
                currentPlayer = 1
                TurnView.text = player1Name + "'s Turn"
            }
            updateScores()
        case 4:
            player4Score -= currentScore
            if (player4Score <= 0) {
                player4Score = 0
                let alert = UIAlertController(title: "Congratulations!", message: player4Name + " wins!", preferredStyle: UIAlertControllerStyle.alert)
                let action = UIAlertAction(title: "Close", style: .default) { (action) -> Void in
                    let nextView = self.storyboard?.instantiateViewController(withIdentifier: "MainMenu")
                    self.present(nextView!, animated: true, completion: nil)
                }
                alert.addAction(action)
                let highScore = HighScoreClass()
                highScore.game = "501"
                highScore.name = player4Name
                highScore.score = Int32(turnsTaken)
                if (Int32(turnsTaken) < currentHighScore.score) {
                    HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
                    HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
                }
                self.present(alert, animated: true, completion: nil)
            }
            if (player5Name != "") {
                currentPlayer += 1
                TurnView.text = player5Name + "'s Turn"
            } else {
                currentPlayer = 1
                TurnView.text = player1Name + "'s Turn"
            }
            updateScores()
        case 5:
            player5Score -= currentScore
            if (player5Score <= 0) {
                player5Score = 0
                let alert = UIAlertController(title: "Congratulations!", message: player5Name + " wins!", preferredStyle: UIAlertControllerStyle.alert)
                let action = UIAlertAction(title: "Close", style: .default) { (action) -> Void in
                    let nextView = self.storyboard?.instantiateViewController(withIdentifier: "MainMenu")
                    self.present(nextView!, animated: true, completion: nil)
                }
                alert.addAction(action)
                let highScore = HighScoreClass()
                highScore.game = "501"
                highScore.name = player5Name
                highScore.score = Int32(turnsTaken)
                if (Int32(turnsTaken) < currentHighScore.score) {
                    HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
                    HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
                }
                self.present(alert, animated: true, completion: nil)
            }
            if (player6Name != "") {
                currentPlayer += 1
                TurnView.text = player6Name + "'s Turn"
            } else {
                currentPlayer = 1
                TurnView.text = player1Name + "'s Turn"
            }
            updateScores()
        case 6:
            player6Score -= currentScore
            if (player6Score <= 0) {
                player6Score = 0
                let alert = UIAlertController(title: "Congratulations!", message: player6Name + " wins!", preferredStyle: UIAlertControllerStyle.alert)
                let action = UIAlertAction(title: "Close", style: .default) { (action) -> Void in
                    let nextView = self.storyboard?.instantiateViewController(withIdentifier: "MainMenu")
                    self.present(nextView!, animated: true, completion: nil)
                }
                alert.addAction(action)
                let highScore = HighScoreClass()
                highScore.game = "501"
                highScore.name = player6Name
                highScore.score = Int32(turnsTaken)
                if (Int32(turnsTaken) < currentHighScore.score) {
                    HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
                    HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
                }
                self.present(alert, animated: true, completion: nil)
            }
            currentPlayer = 1
            TurnView.text = player1Name + "'s Turn"
            updateScores()
        default:
            currentScore = 0
        }
    }
    func updateScores() {
        currentScore = 0
        ScoreLabel.text = String(currentScore)
        if (player1Name != "") {
            Player1View.text = player1Name + ": " + String(player1Score)
        } else {
            Player1View.text = ""
        }
        if (player2Name != "") {
            Player2View.text = player2Name + ": " + String(player2Score)
        } else {
            Player2View.text = ""
        }
        if (player3Name != "") {
            Player3View.text = player3Name + ": " + String(player3Score)
        } else {
            Player3View.text = ""
        }
        if (player4Name != "") {
            Player4View.text = player4Name + ": " + String(player4Score)
        } else {
            Player4View.text = ""
        }
        if (player5Name != "") {
            Player5View.text = player5Name + ": " + String(player5Score)
        } else {
            Player5View.text = ""
        }
        if (player6Name != "") {
            Player6View.text = player6Name + ": " + String(player6Score)
        } else {
            Player6View.text = ""
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

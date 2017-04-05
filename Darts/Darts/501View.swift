//
//  501View.swift
//  Darts
//
//  Created by Dakota Raymond on 4/4/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import UIKit

class _01View: UIViewController {

    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var Player1View: UILabel!
    @IBOutlet weak var Player2View: UILabel!
    @IBOutlet weak var Player3View: UILabel!
    @IBOutlet weak var Player4View: UILabel!
    @IBOutlet weak var Player5View: UILabel!
    @IBOutlet weak var Player6View: UILabel!
    @IBOutlet weak var TurnView: UILabel!
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
    
    @IBAction func Button1(_ sender: Any) {
        currentScore += 1
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button2(_ sender: Any) {
        currentScore += 2
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button3(_ sender: Any) {
        currentScore += 3
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button4(_ sender: Any) {
        currentScore += 4
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button5(_ sender: Any) {
        currentScore += 5
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button6(_ sender: Any) {
        currentScore += 6
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button7(_ sender: Any) {
        currentScore += 7
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button8(_ sender: Any) {
        currentScore += 8
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button9(_ sender: Any) {
        currentScore += 9
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button10(_ sender: Any) {
        currentScore += 10
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button11(_ sender: Any) {
        currentScore += 11
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button12(_ sender: Any) {
        currentScore += 12
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button13(_ sender: Any) {
        currentScore += 13
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button14(_ sender: Any) {
        currentScore += 14
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button15(_ sender: Any) {
        currentScore += 15
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button16(_ sender: Any) {
        currentScore += 16
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button17(_ sender: Any) {
        currentScore += 17
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button18(_ sender: Any) {
        currentScore += 18
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button19(_ sender: Any) {
        currentScore += 19
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button20(_ sender: Any) {
        currentScore += 20
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button25(_ sender: Any) {
        currentScore += 25
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func Button50(_ sender: Any) {
        currentScore += 50
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func ClearButton(_ sender: Any) {
        currentScore = 0
        ScoreLabel.text = String(currentScore)
    }
    @IBAction func EndTurnButton(_ sender: Any) {
        switch currentPlayer {
        case 1:
            player1Score -= currentScore
            currentPlayer += 1
            TurnView.text = player2Name + "'s Turn"
            updateScores()
        case 2:
            player2Score -= currentScore
            currentPlayer += 1
            TurnView.text = player3Name + "'s Turn"
            updateScores()
        case 3:
            player3Score -= currentScore
            currentPlayer += 1
            TurnView.text = player4Name + "'s Turn"
            updateScores()
        case 4:
            player4Score -= currentScore
            currentPlayer += 1
            TurnView.text = player5Name + "'s Turn"
            updateScores()
        case 5:
            player5Score -= currentScore
            currentPlayer += 1
            TurnView.text = player6Name + "'s Turn"
            updateScores()
        case 6:
            player6Score -= currentScore
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
        Player1View.text = player1Name + ": " + String(player1Score)
        Player2View.text = player2Name + ": " + String(player2Score)
        Player3View.text = player3Name + ": " + String(player3Score)
        Player4View.text = player4Name + ": " + String(player4Score)
        Player5View.text = player5Name + ": " + String(player5Score)
        Player6View.text = player6Name + ": " + String(player6Score)
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

//
//  HIghScoreView.swift
//  DartsData
//
//  Created by Dakota Raymond on 4/23/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import UIKit

class HIghScoreView: UIViewController {
    @IBOutlet weak var Name301: UILabel!
    @IBOutlet weak var Score301: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateHighScores()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func StoringButton(_ sender: Any) {
        let highScore = HighScoreClass()
        highScore.game = "301"
        highScore.name = "New"
        highScore.score = 300
        HighScoreData.save(highscore: highScore, context: Store.sharedMainContext())
    }
    
    func updateHighScores() {
        var score301 = HighScoreData.fetchGame(in: Store.sharedMainContext(), game: "301")
        Name301.text = score301.name
        Score301.text = String(score301.score)
    }
    
    @IBAction func RetrieveButton(_ sender: Any) {
        let result = HighScoreData.fetchGame(in: Store.sharedMainContext(), game: "301")
        print(result.name)
        
    }
    @IBAction func DeleteButton(_ sender: UIButton) {
        HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
        updateHighScores()
        
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

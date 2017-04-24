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
    @IBOutlet weak var Name501: UILabel!
    @IBOutlet weak var Score501: UILabel!
    @IBOutlet weak var Name701: UILabel!
    @IBOutlet weak var Score701: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateHighScores()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateHighScores() {
        let score301 = HighScoreData.fetchGame(in: Store.sharedMainContext(), game: "301")
        let score501 = HighScoreData.fetchGame(in: Store.sharedMainContext(), game: "501")
        let score701 = HighScoreData.fetchGame(in: Store.sharedMainContext(), game: "701")
        Name301.text = score301.name
        Score301.text = String(score301.score)
        Name501.text = score501.name
        Score501.text = String(score501.score)
        Name701.text = score701.name
        Score701.text = String(score701.score)
    }
    
    @IBAction func DeleteButton(_ sender: UIButton) {
        HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "301")
        HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "501")
        HighScoreData.deleteGame(context: Store.sharedMainContext(), game: "701")
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

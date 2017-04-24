//
//  SelectPlayers701.swift
//  DartsData
//
//  Created by Dakota Raymond on 4/23/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import UIKit

class SelectPlayers701: UIViewController {
    
    @IBOutlet weak var Player1Name: UITextField!
    @IBOutlet weak var Player2Name: UITextField!
    @IBOutlet weak var Player3Name: UITextField!
    @IBOutlet weak var Player4Name: UITextField!
    @IBOutlet weak var Player5Name: UITextField!
    @IBOutlet weak var Player6Name: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newView = segue.destination as! View701
        newView.player1Name = Player1Name.text!
        newView.player2Name = Player2Name.text!
        newView.player3Name = Player3Name.text!
        newView.player4Name = Player4Name.text!
        newView.player5Name = Player5Name.text!
        newView.player6Name = Player6Name.text!
        
    }

}

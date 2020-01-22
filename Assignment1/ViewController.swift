//
//  ViewController.swift
//  Assignment1
//
//  Created by Ian M Hugya on 1/22/20.
//  Copyright © 2020 Ian M Hugya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameValue = 0;
    var playerValue = 0;
    var winCount=0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    

    @IBAction func rockAction(_ sender: Any) {
        randomGame();
        playerValue=1;
        if(gameValue==2){
            winCount+=1;
            scoreLabel.text=String(winCount);
        }
    }
    
    @IBAction func paperAction(_ sender: Any) {
        randomGame();
        playerValue=2;
        if(gameValue==1){
            winCount+=1;
            scoreLabel.text=String(winCount);
        }
    }
    @IBAction func scissorsAction(_ sender: Any) {
        randomGame();
        playerValue=3;
        if(gameValue==2){
            winCount+=1;
            scoreLabel.text=String(winCount);
        }
    }
    
    func randomGame(){
        gameValue=Int.random(in:1 ... 3)
        image.image=UIImage(named:String(gameValue))
        
    }
    func getInput(){
        
    }
}


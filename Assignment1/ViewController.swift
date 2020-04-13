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
     
        
      
    }
    override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
        
    
     
        
    }
    //MARK:-
    //Market: Table View Data Source Methods
    var name = UserDefaults().string(forKey: "name")
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
   
    
    
    
    @IBAction func displayActionSheet(_ sender: Any) {
        
        
    }
    @IBAction func rockAction(_ sender: Any) {
        nameLabel.text = name;
        randomGame();
        playerValue=1;
        if(gameValue==2){
              theLabel.text="Win"
            winCount+=1;
            scoreLabel.text=String(winCount);
        }
        else{
              theLabel.text="Loss"
            winCount=0;
             scoreLabel.text=String(winCount);
            // 1
            let optionMenu = UIAlertController(title: nil, message: "You lost", preferredStyle: .actionSheet)
            
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            
            // 4
            
            optionMenu.addAction(cancelAction)
            
            // 5
            self.present(optionMenu, animated: true, completion: nil)
        }
     
    }
    
    @IBAction func paperAction(_ sender: Any) {
        nameLabel.text = name;
        randomGame();
        playerValue=2;
        if(gameValue==1){
              theLabel.text="Win"
            winCount+=1;
            scoreLabel.text=String(winCount);
            
        }
        else{
            theLabel.text="Loss"
            winCount=0;
            scoreLabel.text=String(winCount);
            // 1
            let optionMenu = UIAlertController(title: nil, message: "You lost", preferredStyle: .actionSheet)
            
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            
            // 4
           
            optionMenu.addAction(cancelAction)
            
            // 5
            self.present(optionMenu, animated: true, completion: nil)
        }
        
    }
    @IBAction func scissorsAction(_ sender: Any) {
        nameLabel.text = name;        randomGame();
        playerValue=3;
        if(gameValue==2){
            theLabel.text="Win"
            winCount+=1;
            scoreLabel.text=String(winCount);
        }
        else{
              theLabel.text="Loss"
            winCount=0;
             scoreLabel.text=String(winCount);
            // 1
            let optionMenu = UIAlertController(title: nil, message: "You lost", preferredStyle: .actionSheet)
            
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            
            // 4
           
            optionMenu.addAction(cancelAction)
            
            // 5
            self.present(optionMenu, animated: true, completion: nil)
        }    }
    
    func randomGame(){
        gameValue=Int.random(in:1 ... 3)
        image.image=UIImage(named:String(gameValue))
        
    }
    func getInput(){
        
    }
}


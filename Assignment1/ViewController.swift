//
//  ViewController.swift
//  Assignment1
//
//  Created by Ian M Hugya on 1/22/20.
//  Copyright © 2020 Ian M Hugya. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    var gameValue = 0;
    var playerValue = 0;
    var winCount=0;
    private let dwarves = ["Ian", "Tyler"]
    let simpleTableIdentifier = "test"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK:-
    //Market: Table View Data Source Methods

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dwarves.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell==nil){
            cell=UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        cell?.textLabel?.text=dwarves[indexPath.row]
        return cell!
    }
    
    @IBAction func displayActionSheet(_ sender: Any) {
        
        
    }
    @IBAction func rockAction(_ sender: Any) {
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
        randomGame();
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


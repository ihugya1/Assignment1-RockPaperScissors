//
//  testTableViewCell.swift
//  Assignment1
//
//  Created by user919223 on 3/28/20.
//  Copyright © 2020 Ian M Hugya. All rights reserved.
//

import UIKit

class testTableViewCell: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var singlePicker: UIPickerView!
    private let figherNames = ["Sean Omalley", "Connor Mcgregor", "Israel Adesanya", "Yoel Romero","Cody Garbrandt", "Paul Felder", "Jon Jones", "Daniel Cormier", "TJ Dillashaw", "Henry Cejudo", "Stipe Miocic"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = figherNames[row]
        let title = "You selected \(selected)!"
        
        let alert = UIAlertController(
            title:title,
            message: "\(selected) is a fighter in the UFC, \(selected) won his/her last fight",
            preferredStyle: .alert)
        let action = UIAlertAction(title: "Close Fighter Stats", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return figherNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:
        Int) -> String? {
        return figherNames[row]
    }
    
}

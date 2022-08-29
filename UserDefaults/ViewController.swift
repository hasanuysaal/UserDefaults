//
//  ViewController.swift
//  UserDefaults
//
//  Created by Hasan Uysal on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toDoText: UITextField!
    @IBOutlet weak var dateText: UITextField!
    @IBOutlet weak var toDoLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedToDo = UserDefaults.standard.object(forKey: "toDoTextUD")
        let savedDate = UserDefaults.standard.object(forKey: "dateTextUD")
        
        if let sendToDo = savedToDo as? String{
            
            toDoLabel.text = sendToDo
            
        }
        
        if let sendDate = savedDate as? String {
            
            dateLabel.text = sendDate
            
        }
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(toDoText.text!, forKey: "toDoTextUD")
        UserDefaults.standard.set(dateText.text!, forKey: "dateTextUD")
        
        toDoLabel.text = toDoText.text
        dateLabel.text = dateText.text
        
    }

    @IBAction func deleteButton(_ sender: Any) {
        
    }
    
}


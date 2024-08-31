//
//  EntryViewController.swift
//  ToDoList
//
//  Created by Carlos Ignacio Padilla Herrera on 30/08/24.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(@objc method))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
        
    }
    
    @objc func saveTask() {
        
        guard let text = field.text, !text.isEmpty else {
            return
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count")
        
        UserDefaults().set(text, forKey: "task_\(newCount)")
        
        
        
        
    }
}

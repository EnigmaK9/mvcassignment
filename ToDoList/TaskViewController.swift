//
//  TaskViewController.swift
//  ToDoList
//
//  Created by Carlos Ignacio Padilla Herrera on 30/08/24.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        //guard let count = UserDefaults.standard.value(forKey: "count") as? Int, count > 0, let index = taskIndex else {
        //    return
        //}
        
        // let newCount = count - 1
        
        // UserDefaults.standard.setValue(newCount, forKey: "count")
        // UserDefaults.standard.setValue(nil, forKey: "task_\(currentPosition)")
        
        // navigationController?.popViewController(animated: true) // Go back to the previous screen after deletion
    }
}

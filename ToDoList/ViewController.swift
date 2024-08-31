//
//  ViewController.swift
//  ToDoList
//
//  Created by Carlos Ignacio Padilla Herrera on 30/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TableView: UITableView! // nos permite controlar el tableview en el storyboard
    var tasks = [String]() // Corrected type and added initialization
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tasks"
        
        TableView.delegate = self
        tableView.dataSource = self
        
        //setup
        
        if  !UserDefaults().bool(forKey: "setup") {
            UserDefaults().set(true, forKey: "setup")
            UserDefaults().set(0, forKey: "count")
            
        }
        
        // Do any additional setup after loading the view.
        // obtener todos los datos salvados
    }
    
    @IBAction func didTapAdd() {
        let vc = storyboard?.instantiateViewController(identifier: "entry") as! EntryViewController
        vc.title = "Nueva tarea"
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // Corrected the argument to lowercase indexPath
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}

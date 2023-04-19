//
//  ViewController.swift
//  Barman2
//
//  Created by Hector on 17/04/23.
//

import UIKit

class ViewController: UIViewController {
    let parser = Parser()
    
    @IBOutlet var tableView: UITableView!
    var drinks = [Drink]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        parser.parse{
            data in
            self.drinks = data
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
        tableView.dataSource = self
        
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = drinks[indexPath.row].name
        return cell
    }
}

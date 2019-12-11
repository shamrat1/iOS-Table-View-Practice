//
//  ViewController.swift
//  Table View Practice
//
//  Created by Leads Computer on 12/11/19.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var recipeList = RecipesBank()
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeList.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.productImage.image = UIImage(named: recipeList.list[indexPath.row].image)
        cell.title.text = recipeList.list[indexPath.row].title
        cell.productDescription.text = recipeList.list[indexPath.row].description

        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.performSegue(withIdentifier: "list2Single", sender: indexPath.row)
//    }
//    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let destinationVC = segue.destination as? SingleViewController else {return}
            let selectedRow = indexPath.row
            destinationVC.indexVar = selectedRow
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


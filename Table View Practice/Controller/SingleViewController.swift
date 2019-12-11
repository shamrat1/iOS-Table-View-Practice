//
//  SingleViewController.swift
//  Table View Practice
//
//  Created by Leads Computer on 12/11/19.
//

import UIKit

class SingleViewController: UIViewController {
    var recipesList = RecipesBank()
    var indexVar : Int = 0
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImage.image = UIImage(named: recipesList.list[indexVar].image)
        recipeTitle.text = recipesList.list[indexVar].title
        recipeDescription.text = recipesList.list[indexVar].description
        // Do any additional setup after loading the view.
    }

}

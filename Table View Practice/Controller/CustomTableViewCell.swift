//
//  CustomTableViewCell.swift
//  Table View Practice
//
//  Created by Leads Computer on 12/11/19.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
 

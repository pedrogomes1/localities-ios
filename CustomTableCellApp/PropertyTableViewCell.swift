//
//  PropertyTableViewCell.swift
//  CustomTableCellApp
//
//  Created by Pedro Henrique on 07/06/23.
//

import UIKit

class PropertyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var bedroomLabel: UILabel!
    @IBOutlet weak var bathroomLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

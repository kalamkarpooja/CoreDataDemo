//
//  TableViewCell.swift
//  CoreDataDemo
//
//  Created by Mac on 04/04/17.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mobile: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var name: UILabel!
    var student:Student!{
        didSet{
            name.text = student.name
            address.text = student.address
            city.text = student.city
            mobile.text = student.mobile
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
